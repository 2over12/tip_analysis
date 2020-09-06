open Containers

type type_var = 
  | Expr of int
  | Var of string



type term_cons =
  | Pointer
  | Function
  | Mu
type term = 
  | Var of type_var
  | FreeVar of int
  | Int
  | Constructor of (term_cons * term list)


type type_constraint = (term * term)

let collect_func_cons (func: AnnotatedAst.Func.t) = []

let collect_constraints (tree: AnnotatedAst.TipAst.t) = List.map collect_func_cons tree