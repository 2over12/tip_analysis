
include Nice_parser.Make(struct
type result = Ast.TipAst.t
type token = TipParser.token
exception ParseError = TipParser.Error
let parse = TipParser.program
include TipLexer
end)
