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

type expression = 
  | BinOp of expression*bin_operator*expression
  | UnOp of un_operator*expression
  | Constant of int
  | Variable of string
  | Projection of expression*string list
  | Record of (string*expression) list
  | Address of string
  | Deref of expression
  | Call of {fname: expression; args: expression list;}
  | Input
  | Alloc of expression
  | Null

type statement = 
  | Many of statement*statement
  | Output of expression
  | Assign of {ident: string; value: expression;}
  | Store of {ident: string; value: expression;}
  | If of {test: expression; then_body: statement; else_body: statement option}
  | While of  {test:expression; then_body: statement}


type tip_func = {name: string; params: string list; vars: string list; body: statement; retval: expression;}

type tip_ast = tip_func list

let f _ = List.(--)