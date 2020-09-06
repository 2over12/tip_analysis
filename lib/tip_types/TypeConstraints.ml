open Containers
open Tip_parser

type type_var = 
  | Expr of int
  | Var of string



type term_cons =
  | Pointer
  | Function
  | Mu
type term = 
  | TVar of type_var
  | FreeVar of int
  | TInt
  | Constructor of (term_cons * term list)


type type_constraint = (term * term)


let expr_to_var = function (annot, _) -> TVar (Expr annot)
let lexpr_to_vars = List.map expr_to_var


let param_to_tvar pstr = TVar (Var pstr)

let lparams_to_tvars = List.map param_to_tvar

let make_function args return = Constructor(Function,args@[return]) 



let (+=) f g = function x -> f (g x)

let rec get_expr_constraints expr= 
  let (_, atom ) = expr in 
  let selfvar = expr_to_var expr in
  let coll_list = (List.flatten) += (List.map get_expr_constraints) in
  match atom with 
    | Ast.Expr.Alloc child -> ((selfvar, expr_to_var child)::(get_expr_constraints child): type_constraint list)
    | Ast.Expr.Call nm_args -> [(expr_to_var nm_args.fname,make_function (lexpr_to_vars nm_args.args) selfvar)] @ (get_expr_constraints nm_args.fname) @ coll_list nm_args.args
    | Ast.Expr.Input -> [(selfvar,TInt)]


let rec statement_to_constraints (stat: AnnotatedAst.Stat.t) = match stat with
  | Many(s1,s2) -> statement_to_constraints s1 @ statement_to_constraints s2
  | Output (expr) -> ([(expr_to_var expr, TInt)]: type_constraint list)
  | Assign a ->  [(param_to_tvar a.ident, expr_to_var a.value)]
  | Store a ->  [(Constructor (Pointer,[param_to_tvar a.ident]), expr_to_var a.value)]
  | If item -> 
      let body = statement_to_constraints item.then_body in
      let ebody = Option.get_or ~default:[] (item.else_body |>  Option.map statement_to_constraints)
        in [(expr_to_var item.test, TInt)] @ body @ ebody
  | While item ->
      let body = statement_to_constraints item.then_body in [(expr_to_var item.test, TInt)] @ body




let create_func_constraint (func: AnnotatedAst.Func.t) = let params = (expr_to_var func.retval :: (func.params |> lparams_to_tvars)) in  (param_to_tvar func.name, Constructor (Function, params))
let collect_func_cons (func: AnnotatedAst.Func.t) = (create_func_constraint func) :: statement_to_constraints func.body

let collect_constraints (tree: AnnotatedAst.TipAst.t) = List.map collect_func_cons tree