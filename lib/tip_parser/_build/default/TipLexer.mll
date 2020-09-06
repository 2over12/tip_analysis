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
let ident = ['A'-'Z' 'a'-'z' '0'-'9' '_']*
let number = '-'?['0'-'9']+


rule next_token = parse
  | eof { EOF }
  | whitespace+
    { next_token lexbuf }
  | newline
    { Lexing.new_line lexbuf; next_token lexbuf }
  (* YOUR TOKENS HERE... *)
  | '(' { LPAR }
  | ')' { RPAR }

  (* lex identifiers last, so keywords are not lexed as identifiers *)
  | ident as atom { IDENT atom }
  | number as i {INT (Int.of_string_exn i)}

  (* no match? raise exception *)
  | _ as c { illegal c }