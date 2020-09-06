open Containers

type un_operator = 
  | Neg

type bin_operator = 
  | Plus
  | Minus
  | Times
  | Div
  | Greater
  | Equals



module Expr = struct
  type 'a annotate_t = 
  ('a * 'a expression_atom)
and 'a expression_atom =
  | BinOp of ('a annotate_t)*bin_operator*('a annotate_t)
  | UnOp of un_operator*('a annotate_t)
  | Constant of int
  | Variable of string
  | Projection of ('a annotate_t)*string list
  | Record of (string* 'a annotate_t) list
  | Address of string
  | Deref of 'a  annotate_t
  | Call of {fname: 'a annotate_t; args: ('a annotate_t) list;}
  | Input
  | Alloc of 'a annotate_t
  | Null

  type t = unit annotate_t

  let rec map f = 
    let curr_map =  map f in
    let expr_map = function |Null -> Null
                      | Alloc annot -> Alloc (curr_map annot)
                      | Call nm_args -> Call {fname=(curr_map nm_args.fname); args=List.map curr_map nm_args.args} 
                      | Input -> Input
                      | Deref a -> Deref (map f a)
                      | Address _ as a -> a
                      | Record fields -> Record (List.map (function (nm,expr) -> (nm, (curr_map expr))) fields)
                      | Projection (expr,access_list) -> Projection (expr |> curr_map, access_list)
                      | Constant _ as c -> c
                      | Variable _ as v -> v
                      | BinOp (exp1, op ,exp2) -> BinOp (curr_map exp1, op , curr_map exp2)
                      | UnOp (op, expr) -> UnOp (op, curr_map expr)
                    in
    function (annot, expr) -> (f annot, expr_map expr)
end

let (+=) f g = function x -> f (g x)



module Stat = struct 
  type 'a annotate_t = 
  | Many of 'a annotate_t* 'a annotate_t
  | Output of 'a Expr.annotate_t
  | Assign of {ident: string; value: 'a Expr.annotate_t;}
  | Store of {ident: string; value: 'a Expr.annotate_t;}
  | If of {test: 'a Expr.annotate_t; then_body: 'a annotate_t; else_body: 'a annotate_t option}
  | While of  {test:'a Expr.annotate_t; then_body: 'a annotate_t}

  type t = unit annotate_t
end


module Func = struct 
  type 'a annotate_t = {name: string; params: string list; vars: string list; body: 'a Stat.annotate_t; retval: 'a Expr.annotate_t;}
  type t = unit annotate_t
end

module TipAst = struct
  type 'a annotate_t = 'a Func.annotate_t list
  type t = unit annotate_t
end







let f _ = List.(--)