open Tip_parser
open Containers


module Expr = struct 
  type t = int Ast.Expr.annotate_t

  let construct (curr_id: int ref) = Ast.Expr.map (fun _ -> let res = !curr_id in curr_id:= res+1; res) 
end



module Stat = struct 
  type t = int Ast.Stat.annotate_t

  let rec construct  (curr_id: int ref) (stat:Ast.Stat.t) = 
    let cons = construct curr_id in 
    let cons_expr = Expr.construct curr_id in 
    match stat with 
    | Many (x,y) -> Ast.Stat.Many(cons x, cons y)
    | Output exp -> Ast.Stat.Output (cons_expr exp)
    | Assign pr -> Assign {pr with value = (pr.value |> cons_expr)}
    | Store str -> Store {str with value = (cons_expr str.value)}
    | If cont -> If {test=cons_expr cont.test;then_body=cons cont.then_body;else_body=(Option.map cons cont.else_body)}
    | While whl -> While {test = cons_expr whl.test; then_body = cons whl.then_body}
   
end

module Func = struct
  type t = int Ast.Func.annotate_t
  let construct (curr_id: int ref) (func: Ast.Func.t) = {func with body=(Stat.construct curr_id func.body); retval=(Expr.construct curr_id func.retval)}
end


module TipAst = struct 
  type t = int Ast.TipAst.annotate_t

  let constuct (tree:Ast.TipAst.t) = let curr_id = ref 0 in List.map (Func.construct curr_id) tree
end
