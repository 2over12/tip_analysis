
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHILE
    | VAR
    | TIMES
    | SEMI
    | RPAR
    | RET
    | RBRACKET
    | PROJECT of (
# 7 "TipParser.mly"
       (string list)
# 18 "TipParser.ml"
  )
    | PLUS
    | OUTPUT
    | NULL
    | MINUS
    | LPAR
    | LBRACKET
    | INT of (
# 6 "TipParser.mly"
       (int)
# 29 "TipParser.ml"
  )
    | INPUT
    | IF
    | IDENT of (
# 5 "TipParser.mly"
       (string)
# 36 "TipParser.ml"
  )
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
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState99
  | MenhirState94
  | MenhirState87
  | MenhirState84
  | MenhirState78
  | MenhirState76
  | MenhirState73
  | MenhirState69
  | MenhirState66
  | MenhirState63
  | MenhirState52
  | MenhirState49
  | MenhirState47
  | MenhirState45
  | MenhirState43
  | MenhirState41
  | MenhirState39
  | MenhirState37
  | MenhirState32
  | MenhirState29
  | MenhirState23
  | MenhirState21
  | MenhirState20
  | MenhirState19
  | MenhirState17
  | MenhirState16
  | MenhirState14
  | MenhirState10
  | MenhirState4
  | MenhirState2
  | MenhirState0

# 1 "TipParser.mly"
  open Containers
# 98 "TipParser.ml"

let rec _menhir_goto_option_else_body_ : _menhir_env -> 'ttv_tail -> 'tv_option_else_body_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv407 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement)) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_else_body_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((((('freshtv405 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement)) = Obj.magic _menhir_stack in
    let ((ebody : 'tv_option_else_body_) : 'tv_option_else_body_) = _v in
    ((let (((_menhir_stack, _menhir_s), _, (t : 'tv_expr)), _, (body : 'tv_statement)) = _menhir_stack in
    let _7 = () in
    let _5 = () in
    let _4 = () in
    let _2 = () in
    let _1 = () in
    let _v : 'tv_single_statement = 
# 64 "TipParser.mly"
                                                                                        (Ast.If {test=t;then_body=body;else_body=ebody})
# 117 "TipParser.ml"
     in
    _menhir_goto_single_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)

and _menhir_goto_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_statement -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv371 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv361) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LBRACKET ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv357) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | IDENT _v ->
                        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState84 _v
                    | IF ->
                        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                    | OUTPUT ->
                        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                    | TIMES ->
                        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                    | WHILE ->
                        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState84
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState84) : 'freshtv358)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv359) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv360)) : 'freshtv362)
            | IDENT _ | IF | OUTPUT | RBRACKET | RET | TIMES | WHILE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv363) = Obj.magic _menhir_stack in
                ((let _v : 'tv_option_else_body_ = 
# 114 "<standard.mly>"
    ( None )
# 175 "TipParser.ml"
                 in
                _menhir_goto_option_else_body_ _menhir_env _menhir_stack _v) : 'freshtv364)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv365 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv366)) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv369 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv381)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (b : 'tv_statement)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_else_body = 
# 67 "TipParser.mly"
                                           (b)
# 211 "TipParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv377) = _menhir_stack in
            let (_v : 'tv_else_body) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv375) = Obj.magic _menhir_stack in
            let (_v : 'tv_else_body) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv373) = Obj.magic _menhir_stack in
            let ((x : 'tv_else_body) : 'tv_else_body) = _v in
            ((let _v : 'tv_option_else_body_ = 
# 116 "<standard.mly>"
    ( Some x )
# 225 "TipParser.ml"
             in
            _menhir_goto_option_else_body_ _menhir_env _menhir_stack _v) : 'freshtv374)) : 'freshtv376)) : 'freshtv378)) : 'freshtv380)) : 'freshtv382)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv384)) : 'freshtv386)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv389 * _menhir_state * 'tv_single_statement) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv387 * _menhir_state * 'tv_single_statement) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_single_statement)), _, (y : 'tv_statement)) = _menhir_stack in
        let _v : 'tv_statement = 
# 57 "TipParser.mly"
                                  (Ast.Many (x,y))
# 244 "TipParser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)) : 'freshtv390)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv397 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv393 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv391 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (t : 'tv_expr)), _, (body : 'tv_statement)) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_single_statement = 
# 65 "TipParser.mly"
                                                                 (Ast.While {test=t;then_body=body})
# 268 "TipParser.ml"
             in
            _menhir_goto_single_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv392)) : 'freshtv394)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expr))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv396)) : 'freshtv398)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv403 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 283 "TipParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ALLOC ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | AMPER ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | INPUT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
            | LBRACKET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | LPAR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | MINUS ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | NULL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | TIMES ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState94
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((('freshtv401 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 325 "TipParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv355 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv351 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv349 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (nm : 'tv_expr)), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_expr__)) = _menhir_stack in
        let _4 = () in
        let _2 = () in
        let _v : 'tv_expr = let a = 
# 232 "<standard.mly>"
    ( xs )
# 352 "TipParser.ml"
         in
        
# 45 "TipParser.mly"
                                                       (Ast.Call {fname=nm;args=a;})
# 357 "TipParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)) : 'freshtv352)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv353 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_expr__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv354)) : 'freshtv356)

and _menhir_goto_single_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_single_statement -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv347 * _menhir_state * 'tv_single_statement) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState87 _v
    | IF ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | OUTPUT ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | TIMES ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | WHILE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState87
    | RBRACKET | RET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state * 'tv_single_statement) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_single_statement)) = _menhir_stack in
        let _v : 'tv_statement = 
# 58 "TipParser.mly"
                      (x)
# 393 "TipParser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv346)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState87) : 'freshtv348)

and _menhir_goto_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv339 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 409 "TipParser.ml"
        ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv337 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 417 "TipParser.ml"
        ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__) : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : (
# 5 "TipParser.mly"
       (string)
# 424 "TipParser.ml"
        ))), _, (y : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _2_inlined1 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__ = let x =
          let _2 = _2_inlined1 in
          
# 175 "<standard.mly>"
    ( (x, y) )
# 433 "TipParser.ml"
          
        in
        
# 243 "<standard.mly>"
    ( x :: xs )
# 439 "TipParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv341) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__) : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___ = 
# 144 "<standard.mly>"
    ( x )
# 454 "TipParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)) : 'freshtv344)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_expr_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_expr_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 144 "<standard.mly>"
    ( x )
# 475 "TipParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_expr_) : 'tv_separated_nonempty_list_COMMA_expr_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 492 "TipParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
    | _ ->
        _menhir_fail ()

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_run43 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_run45 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState45
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45

and _menhir_run47 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState47
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47

and _menhir_run41 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState41 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState41
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState41

and _menhir_run31 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> (
# 7 "TipParser.mly"
       (string list)
# 681 "TipParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv327 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
    let ((p : (
# 7 "TipParser.mly"
       (string list)
# 690 "TipParser.ml"
    )) : (
# 7 "TipParser.mly"
       (string list)
# 694 "TipParser.ml"
    )) = _v in
    ((let (_menhir_stack, _menhir_s, (e : 'tv_expr)) = _menhir_stack in
    let _v : 'tv_expr = 
# 47 "TipParser.mly"
                     (Ast.Projection (e,p))
# 700 "TipParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv328)

and _menhir_run32 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState32
    | RPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState32 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_expr__ = 
# 142 "<standard.mly>"
    ( [] )
# 736 "TipParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32

and _menhir_goto_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv323 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv319 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv317 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_expr = let fs = 
# 232 "<standard.mly>"
    ( xs )
# 764 "TipParser.ml"
         in
        
# 46 "TipParser.mly"
                                                                                   (Ast.Record fs)
# 769 "TipParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)) : 'freshtv324)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "TipParser.mly"
       (string)
# 783 "TipParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COLON ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 795 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALLOC ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | AMPER ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | INPUT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LBRACKET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LPAR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NULL ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv314)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 831 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)

and _menhir_goto_expr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv173 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | DIV | EQEQ | GREATER | MINUS | PLUS | RBRACKET | RPAR | SEMI | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv169 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 35 "TipParser.mly"
                  (Ast.Alloc e)
# 858 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv171 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)) : 'freshtv174)
    | MenhirState49 | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv181 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv175 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ALLOC ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | AMPER ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | INPUT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState49 _v
            | LBRACKET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | LPAR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | MINUS ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | NULL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | TIMES ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState49
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState49) : 'freshtv176)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv177 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_expr)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_expr_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 927 "TipParser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv179 * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)) : 'freshtv182)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv187 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | DIV | EQEQ | GREATER | MINUS | PLUS | RBRACKET | RPAR | SEMI | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv183 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _, (y : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 51 "TipParser.mly"
          (Ast.Times)
# 955 "TipParser.ml"
             in
            
# 41 "TipParser.mly"
                             (Ast.BinOp (x,o,y))
# 960 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv185 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)) : 'freshtv188)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv193 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EQEQ | GREATER | MINUS | PLUS | RBRACKET | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv189 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _, (y : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 49 "TipParser.mly"
         (Ast.Plus)
# 992 "TipParser.ml"
             in
            
# 41 "TipParser.mly"
                             (Ast.BinOp (x,o,y))
# 997 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv190)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv191 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)) : 'freshtv194)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv199 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | DIV | EQEQ | GREATER | MINUS | PLUS | RBRACKET | RPAR | SEMI | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv195 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _, (y : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 52 "TipParser.mly"
        (Ast.Div)
# 1025 "TipParser.ml"
             in
            
# 41 "TipParser.mly"
                             (Ast.BinOp (x,o,y))
# 1030 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv197 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv205 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EQEQ | GREATER | MINUS | PLUS | RBRACKET | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv201 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _, (y : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 50 "TipParser.mly"
          (Ast.Minus)
# 1062 "TipParser.ml"
             in
            
# 41 "TipParser.mly"
                             (Ast.BinOp (x,o,y))
# 1067 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv202)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv203 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv204)) : 'freshtv206)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv211 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EQEQ | GREATER | RBRACKET | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv207 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _, (y : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 54 "TipParser.mly"
            (Ast.Greater)
# 1103 "TipParser.ml"
             in
            
# 41 "TipParser.mly"
                             (Ast.BinOp (x,o,y))
# 1108 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv208)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv209 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv210)) : 'freshtv212)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | COMMA | EQEQ | GREATER | RBRACKET | RPAR | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv213 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : 'tv_expr)), _, (y : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = let o = 
# 53 "TipParser.mly"
         (Ast.Equals)
# 1144 "TipParser.ml"
             in
            
# 41 "TipParser.mly"
                             (Ast.BinOp (x,o,y))
# 1149 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv215 * _menhir_state * 'tv_expr)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv216)) : 'freshtv218)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv225 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1164 "TipParser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv219 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1174 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv220)
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | RBRACKET ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1206 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (x : (
# 5 "TipParser.mly"
       (string)
# 1211 "TipParser.ml"
            ))), _, (y : 'tv_expr)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__ = let x = 
# 175 "<standard.mly>"
    ( (x, y) )
# 1217 "TipParser.ml"
             in
            
# 241 "<standard.mly>"
    ( [ x ] )
# 1222 "TipParser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv223 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1232 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv224)) : 'freshtv226)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv233 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv229 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (x : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expr = 
# 40 "TipParser.mly"
                       (x)
# 1268 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv228)) : 'freshtv230)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv231 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)) : 'freshtv234)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv239 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | DIV | EQEQ | GREATER | MINUS | PLUS | RBRACKET | RPAR | SEMI | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (x : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 42 "TipParser.mly"
                   (Ast.UnOp (Ast.Neg, x))
# 1298 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv236)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv237 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv238)) : 'freshtv240)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv245 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | COMMA | DIV | EQEQ | GREATER | MINUS | PLUS | RBRACKET | RPAR | SEMI | TIMES ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv241 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_expr = 
# 36 "TipParser.mly"
                  (Ast.Deref e)
# 1326 "TipParser.ml"
             in
            _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv243 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv244)) : 'freshtv246)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv251 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACKET ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv247 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState63 _v
                | IF ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | OUTPUT ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | TIMES ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | WHILE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState63
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState63) : 'freshtv248)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv249 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)) : 'freshtv256)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv263 * _menhir_state) * (
# 5 "TipParser.mly"
       (string)
# 1403 "TipParser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv259 * _menhir_state) * (
# 5 "TipParser.mly"
       (string)
# 1427 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv257 * _menhir_state) * (
# 5 "TipParser.mly"
       (string)
# 1434 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (nm : (
# 5 "TipParser.mly"
       (string)
# 1439 "TipParser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_single_statement = 
# 61 "TipParser.mly"
                                      (Ast.Store {ident=nm;value=e})
# 1447 "TipParser.ml"
             in
            _menhir_goto_single_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv258)) : 'freshtv260)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv261 * _menhir_state) * (
# 5 "TipParser.mly"
       (string)
# 1459 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)) : 'freshtv264)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv271 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv267 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv265 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_single_statement = 
# 63 "TipParser.mly"
                         (Ast.Output e)
# 1495 "TipParser.ml"
             in
            _menhir_goto_single_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv266)) : 'freshtv268)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv269 * _menhir_state) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv281 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv277 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACKET ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv273 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
                | IF ->
                    _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | OUTPUT ->
                    _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | TIMES ->
                    _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | WHILE ->
                    _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState76
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv274)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv275 * _menhir_state)) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv276)) : 'freshtv278)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv279 * _menhir_state)) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv289 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1574 "TipParser.ml"
        ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv285 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1598 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv283 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1605 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (nm : (
# 5 "TipParser.mly"
       (string)
# 1610 "TipParser.ml"
            ))), _, (e : 'tv_expr)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_single_statement = 
# 62 "TipParser.mly"
                             (Ast.Assign {ident=nm;value=e})
# 1617 "TipParser.ml"
             in
            _menhir_goto_single_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv284)) : 'freshtv286)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv287 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1629 "TipParser.ml"
            ))) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv311) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack)
        | EQEQ ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack)
        | GREATER ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack)
        | LPAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | PROJECT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) _v
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv307) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (rval : 'tv_expr)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_ret_stat = 
# 32 "TipParser.mly"
                          (rval)
# 1665 "TipParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv303) = _menhir_stack in
            let (_v : 'tv_ret_stat) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv301 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1675 "TipParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) * _menhir_state * 'tv_statement) * 'tv_ret_stat) = Obj.magic _menhir_stack in
            ((assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RBRACKET ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv297 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1685 "TipParser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) * _menhir_state * 'tv_statement) * 'tv_ret_stat) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv295 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1692 "TipParser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) * _menhir_state * 'tv_statement) * 'tv_ret_stat) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s, (nm : (
# 5 "TipParser.mly"
       (string)
# 1697 "TipParser.ml"
                ))), _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)), (v : 'tv_option_var_stat_)), _, (b : 'tv_statement)), (rval : 'tv_ret_stat)) = _menhir_stack in
                let _9 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _v : 'tv_tip_function = let p = 
# 232 "<standard.mly>"
    ( xs )
# 1706 "TipParser.ml"
                 in
                
# 26 "TipParser.mly"
                                                                                                                            (({name=nm; params=p; vars=(Option.get_or ~default:[] v); body=b;retval=rval}: Ast.tip_func))
# 1711 "TipParser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv293) = _menhir_stack in
                let (_menhir_s : _menhir_state) = _menhir_s in
                let (_v : 'tv_tip_function) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv291 * _menhir_state * 'tv_tip_function) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
                | EOF ->
                    _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState99
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv292)) : 'freshtv294)) : 'freshtv296)) : 'freshtv298)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((((('freshtv299 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 1738 "TipParser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) * _menhir_state * 'tv_statement) * 'tv_ret_stat) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)) : 'freshtv302)) : 'freshtv304)) : 'freshtv306)) : 'freshtv308)
        | TIMES ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309) * _menhir_state * 'tv_expr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | _ ->
        _menhir_fail ()

and _menhir_run17 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState17
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv167) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 37 "TipParser.mly"
          (Ast.Null)
# 1795 "TipParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv168)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState19
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | RBRACKET ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState21 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___ = 
# 142 "<standard.mly>"
    ( [] )
# 1876 "TipParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_separated_pair_IDENT_COLON_expr___ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "TipParser.mly"
       (int)
# 1887 "TipParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv163) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((i : (
# 6 "TipParser.mly"
       (int)
# 1897 "TipParser.ml"
    )) : (
# 6 "TipParser.mly"
       (int)
# 1901 "TipParser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 43 "TipParser.mly"
            (Ast.Constant i)
# 1906 "TipParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv164)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_expr = 
# 39 "TipParser.mly"
          (Ast.Input)
# 1920 "TipParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "TipParser.mly"
       (string)
# 1927 "TipParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((nm : (
# 5 "TipParser.mly"
       (string)
# 1937 "TipParser.ml"
    )) : (
# 5 "TipParser.mly"
       (string)
# 1941 "TipParser.ml"
    )) = _v in
    ((let _v : 'tv_expr = 
# 44 "TipParser.mly"
               (Ast.Variable nm)
# 1946 "TipParser.ml"
     in
    _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv160)

and _menhir_run27 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "TipParser.mly"
       (string)
# 1962 "TipParser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv153 * _menhir_state) = Obj.magic _menhir_stack in
        let ((i : (
# 5 "TipParser.mly"
       (string)
# 1970 "TipParser.ml"
        )) : (
# 5 "TipParser.mly"
       (string)
# 1974 "TipParser.ml"
        )) = _v in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_expr = 
# 38 "TipParser.mly"
                   (Ast.Address i)
# 1981 "TipParser.ml"
         in
        _menhir_goto_expr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)

and _menhir_run29 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState29
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALLOC ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | AMPER ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | INPUT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
        | LBRACKET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | LPAR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | NULL ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState16
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)

and _menhir_run64 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv145 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "TipParser.mly"
       (string)
# 2079 "TipParser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQ ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv141 * _menhir_state) * (
# 5 "TipParser.mly"
       (string)
# 2090 "TipParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ALLOC ->
                _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | AMPER ->
                _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | IDENT _v ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | INPUT ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState66 _v
            | LBRACKET ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | LPAR ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | MINUS ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | NULL ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | TIMES ->
                _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState66
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState66) : 'freshtv142)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv143 * _menhir_state) * (
# 5 "TipParser.mly"
       (string)
# 2126 "TipParser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)) : 'freshtv146)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)

and _menhir_run69 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ALLOC ->
        _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | AMPER ->
        _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | IDENT _v ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | INPUT ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState69 _v
    | LBRACKET ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | LPAR ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | MINUS ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | NULL ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | TIMES ->
        _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState69
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState69

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv137 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALLOC ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | AMPER ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | INPUT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState73 _v
        | LBRACKET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | LPAR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | NULL ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv138)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv139 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)

and _menhir_run77 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "TipParser.mly"
       (string)
# 2216 "TipParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQ ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv133 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2228 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALLOC ->
            _menhir_run29 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | AMPER ->
            _menhir_run27 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | IDENT _v ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | INPUT ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState78 _v
        | LBRACKET ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | LPAR ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | MINUS ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | NULL ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | TIMES ->
            _menhir_run17 _menhir_env (Obj.magic _menhir_stack) MenhirState78
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState78) : 'freshtv134)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2264 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)

and _menhir_goto_option_var_stat_ : _menhir_env -> 'ttv_tail -> 'tv_option_var_stat_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv131 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2276 "TipParser.ml"
    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run77 _menhir_env (Obj.magic _menhir_stack) MenhirState14 _v
    | IF ->
        _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | OUTPUT ->
        _menhir_run69 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | TIMES ->
        _menhir_run64 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | WHILE ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState14
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState14) : 'freshtv132)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_IDENT__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv115 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2310 "TipParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAR ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv111 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2320 "TipParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | LBRACKET ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv107 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2330 "TipParser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | VAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv101) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | IDENT _v ->
                        _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
                    | SEMI ->
                        _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState10
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv102)
                | IDENT _ | IF | OUTPUT | TIMES | WHILE ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv103) = Obj.magic _menhir_stack in
                    ((let _v : 'tv_option_var_stat_ = 
# 114 "<standard.mly>"
    ( None )
# 2355 "TipParser.ml"
                     in
                    _menhir_goto_option_var_stat_ _menhir_env _menhir_stack _v) : 'freshtv104)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv105 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2365 "TipParser.ml"
                    ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)) : 'freshtv108)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv109 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2376 "TipParser.ml"
                ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)) : 'freshtv112)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv113 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2387 "TipParser.ml"
            ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)) : 'freshtv116)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMI ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv125) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv123) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (xs : 'tv_loption_separated_nonempty_list_COMMA_IDENT__)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_var_stat = let v = 
# 232 "<standard.mly>"
    ( xs )
# 2409 "TipParser.ml"
             in
            
# 29 "TipParser.mly"
                                              (v)
# 2414 "TipParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv121) = _menhir_stack in
            let (_v : 'tv_var_stat) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv119) = Obj.magic _menhir_stack in
            let (_v : 'tv_var_stat) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv117) = Obj.magic _menhir_stack in
            let ((x : 'tv_var_stat) : 'tv_var_stat) = _v in
            ((let _v : 'tv_option_var_stat_ = 
# 116 "<standard.mly>"
    ( Some x )
# 2428 "TipParser.ml"
             in
            _menhir_goto_option_var_stat_ _menhir_env _menhir_stack _v) : 'freshtv118)) : 'freshtv120)) : 'freshtv122)) : 'freshtv124)) : 'freshtv126)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv127) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)) : 'freshtv130)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_IDENT_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_IDENT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2449 "TipParser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2457 "TipParser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 5 "TipParser.mly"
       (string)
# 2464 "TipParser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 243 "<standard.mly>"
    ( x :: xs )
# 2470 "TipParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv94)) : 'freshtv96)
    | MenhirState10 | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv99) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv97) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_IDENT_) : 'tv_separated_nonempty_list_COMMA_IDENT_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 144 "<standard.mly>"
    ( x )
# 2485 "TipParser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv98)) : 'freshtv100)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_tip_function_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_tip_function_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state * 'tv_tip_function) * _menhir_state * 'tv_list_tip_function_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_tip_function) * _menhir_state * 'tv_list_tip_function_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_tip_function)), _, (xs : 'tv_list_tip_function_)) = _menhir_stack in
        let _v : 'tv_list_tip_function_ = 
# 213 "<standard.mly>"
    ( x :: xs )
# 2504 "TipParser.ml"
         in
        _menhir_goto_list_tip_function_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv76)) : 'freshtv78)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv91 * _menhir_state * 'tv_list_tip_function_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv87 * _menhir_state * 'tv_list_tip_function_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv85 * _menhir_state * 'tv_list_tip_function_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (f : 'tv_list_tip_function_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 9 "TipParser.mly"
       (Ast.tip_ast)
# 2523 "TipParser.ml"
            ) = 
# 22 "TipParser.mly"
                            ( f )
# 2527 "TipParser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv83) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 9 "TipParser.mly"
       (Ast.tip_ast)
# 2535 "TipParser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv81) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 9 "TipParser.mly"
       (Ast.tip_ast)
# 2543 "TipParser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv79) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let ((_1 : (
# 9 "TipParser.mly"
       (Ast.tip_ast)
# 2551 "TipParser.ml"
            )) : (
# 9 "TipParser.mly"
       (Ast.tip_ast)
# 2555 "TipParser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv80)) : 'freshtv82)) : 'freshtv84)) : 'freshtv86)) : 'freshtv88)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv89 * _menhir_state * 'tv_list_tip_function_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)) : 'freshtv92)
    | _ ->
        _menhir_fail ()

and _menhir_reduce22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_loption_separated_nonempty_list_COMMA_IDENT__ = 
# 142 "<standard.mly>"
    ( [] )
# 2573 "TipParser.ml"
     in
    _menhir_goto_loption_separated_nonempty_list_COMMA_IDENT__ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run3 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "TipParser.mly"
       (string)
# 2580 "TipParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2592 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv70)
    | RPAR | SEMI ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2608 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 5 "TipParser.mly"
       (string)
# 2613 "TipParser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_IDENT_ = 
# 241 "<standard.mly>"
    ( [ x ] )
# 2618 "TipParser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_IDENT_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv72)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2628 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7 * _menhir_state * 'tv_tip_function) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv8)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv10)
    | MenhirState87 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv11 * _menhir_state * 'tv_single_statement) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)
    | MenhirState84 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv13)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv14)
    | MenhirState78 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv15 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2659 "TipParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv17 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv18)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv19 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)
    | MenhirState69 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)
    | MenhirState66 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv23 * _menhir_state) * (
# 5 "TipParser.mly"
       (string)
# 2683 "TipParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)
    | MenhirState63 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv25 * _menhir_state)) * _menhir_state * 'tv_expr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv27 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2697 "TipParser.ml"
        ))) * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv28)
    | MenhirState49 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv29 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv31 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv32)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv33 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv34)
    | MenhirState43 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv35 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)
    | MenhirState41 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv37 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv39 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv41 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState32 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv43 * _menhir_state * 'tv_expr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv47 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2751 "TipParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv53 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv55 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState14 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv59 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2785 "TipParser.ml"
        ))) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_IDENT__))) * 'tv_option_var_stat_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv62)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2798 "TipParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState2 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2807 "TipParser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv68)

and _menhir_reduce20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_list_tip_function_ = 
# 211 "<standard.mly>"
    ( [] )
# 2821 "TipParser.ml"
     in
    _menhir_goto_list_tip_function_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "TipParser.mly"
       (string)
# 2828 "TipParser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2840 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run3 _menhir_env (Obj.magic _menhir_stack) MenhirState2 _v
        | RPAR ->
            _menhir_reduce22 _menhir_env (Obj.magic _menhir_stack) MenhirState2
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState2) : 'freshtv4)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv5 * _menhir_state * (
# 5 "TipParser.mly"
       (string)
# 2860 "TipParser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and program : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 9 "TipParser.mly"
       (Ast.tip_ast)
# 2880 "TipParser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | EOF ->
        _menhir_reduce20 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 269 "<standard.mly>"
  

# 2911 "TipParser.ml"
