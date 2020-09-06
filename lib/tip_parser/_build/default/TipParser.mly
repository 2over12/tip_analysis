%token EOF LPAR RPAR
%token COMMA INPUT OUTPUT LBRACKET RBRACKET IF WHILE
%token <string> IDENT
%token <int> INT

%start <Ast.expression> expr

%%
expr:
  | i = INT {Ast.Constant i}