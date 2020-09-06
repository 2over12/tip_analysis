%{open Containers%}

%token EOF LPAR RPAR PLUS MINUS TIMES DIV GREATER EQEQ EQ SEMI
%token COMMA INPUT OUTPUT LBRACKET RBRACKET IF WHILE ELSE VAR RET COLON ALLOC NULL AMPER
%token <string> IDENT
%token <int> INT
%token <string list> PROJECT

%start <Ast.TipAst.t> program

%left GREATER EQEQ
%left PLUS MINUS
%left TIMES DIV
%nonassoc UNARYMINUS
%nonassoc ALLOC
%nonassoc PROJECT
%nonassoc LPAR 


%%
program:
  f=list(tip_function); EOF { f }


tip_function:
  | nm=IDENT; LPAR; p=separated_list(COMMA, IDENT); RPAR; LBRACKET; v=option(var_stat); b=statement; rval=ret_stat RBRACKET {({name=nm; params=p; vars=(Option.get_or ~default:[] v); body=b;retval=rval}: Ast.Func.t)}

var_stat:
  | VAR; v=separated_list(COMMA,IDENT); SEMI; {v}

ret_stat:
  | RET; rval=expr; SEMI; {rval}

expr:
  | ALLOC; e=expr {  ((),Ast.Expr.Alloc e)}
  | TIMES; e=expr {  ((),Ast.Expr.Deref e)}
  | NULL; {  ((),Ast.Expr.Null)}
  | AMPER; i=IDENT {  ((),Ast.Expr.Address i )}
  | INPUT { (),Ast.Expr.Input}
  | LPAR;x=expr; RPAR; {x}
  | x=expr; o=binop; y=expr; {  ((),Ast.Expr.BinOp (x,o,y)) }
  | MINUS; x=expr; {  ((),Ast.Expr.UnOp (Ast.Neg, x))  } %prec UNARYMINUS
  | i = INT {  ((),Ast.Expr.Constant i)  }
  | nm = IDENT {   ((),Ast.Expr.Variable nm) }
  | nm=expr; LPAR; a=separated_list(COMMA,expr); RPAR; {  ((),Ast.Expr.Call {fname=nm;args=a;}) }
  | LBRACKET; fs=separated_list(COMMA,separated_pair(IDENT,COLON,expr)); RBRACKET; {  ((),Ast.Expr.Record fs) }
  | e=expr;p=PROJECT {  ((),Ast.Expr.Projection (e,p)) }
%inline binop:
  | PLUS {Ast.Plus }
  | MINUS {Ast.Minus }
  | TIMES { Ast.Times }
  | DIV {Ast.Div }
  | EQEQ { Ast.Equals }
  | GREATER { Ast.Greater}

statement:
 | x=single_statement;y=statement {Ast.Stat.Many (x,y)}
 | x=single_statement {x}

single_statement:
  | TIMES; nm=IDENT; EQ; e=expr; SEMI {Ast.Stat.Store {ident=nm;value=e}}
  | nm=IDENT;EQ;e=expr; SEMI {Ast.Stat.Assign {ident=nm;value=e}}
  | OUTPUT; e=expr; SEMI {Ast.Stat.Output e}
  | IF; LPAR; t=expr; RPAR; LBRACKET; body=statement; RBRACKET; ebody=option(else_body) {Ast.Stat.If {test=t;then_body=body;else_body=ebody}}
  | WHILE; LPAR; t=expr;RPAR; LBRACKET; body=statement; RBRACKET {Ast.Stat.While {test=t;then_body=body}}
else_body:
  | ELSE; LBRACKET; b=statement; RBRACKET; {b}