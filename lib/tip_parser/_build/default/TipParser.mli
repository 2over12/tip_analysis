
(* The type of tokens. *)

type token = 
  | WHILE
  | VAR
  | TIMES
  | SEMI
  | RPAR
  | RET
  | RBRACKET
  | PROJECT of (string list)
  | PLUS
  | OUTPUT
  | NULL
  | MINUS
  | LPAR
  | LBRACKET
  | INT of (int)
  | INPUT
  | IF
  | IDENT of (string)
  | GREATER
  | EQEQ
  | EQ
  | EOF
  | ELSE
  | DIV
  | COMMA
  | COLON
  | AMPER
  | ALLOC

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val program: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.tip_ast)
