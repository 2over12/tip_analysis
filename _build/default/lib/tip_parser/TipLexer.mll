{
open TipParser
open Containers

exception LexError of string

let[@inline] failwith msg = raise (LexError msg)

let[@inline] illegal c =
  failwith (Printf.sprintf "[lexer] unexpected character: '%c'" c)
}

(* regular expressions *)
let whitespace = ' ' | '\t'
let newline = "\r\n" | '\r' | '\n'
let ident = ['A'-'Z' 'a'-'z' '_']+['A'-'Z' 'a'-'z' '0'-'9' '_']*
let number = ['0'-'9']+
let projection = ('.' ident)+


rule next_token_acc from_space = parse
  | eof { EOF }
  | whitespace+
    { next_token_acc true lexbuf  }
  | newline
    { Lexing.new_line lexbuf; next_token_acc true lexbuf  }
  (* YOUR TOKENS HERE... *)
  | '(' { LPAR }
  | ')' { RPAR }
  | '{' { LBRACKET }
  | '}' { RBRACKET }
  | "else" { ELSE }
  | "if" { IF }
  | "while" { WHILE }
  | '+' { PLUS }
  | '-' { MINUS }
  | '*' {TIMES}
  | '>' {GREATER}
  | '/' {DIV}
  | '=''=' {EQEQ}
  | '=' {EQ}
  | ';' {SEMI}
  | '&' {AMPER}
  | "null" {NULL}
  | "input" {INPUT}
  | "output" {OUTPUT}
  | "var" {VAR}
  | "return" {RET}
  | "alloc" {ALLOC}
  | ',' {COMMA}
  | ':' {COLON}
  | projection as p {if from_space then illegal '.' else PROJECT (p |> String.split_on_char '.' |> List.tl) }
  (* lex identifiers last, so keywords are not lexed as identifiers *)
  | ident as atom { IDENT atom }
  | number as i {INT (Int.of_string_exn i)}

  (* no match? raise exception *)
  | _ as c { illegal c }

{let next_token = next_token_acc false}