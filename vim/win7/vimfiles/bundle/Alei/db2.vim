"sql补齐
:iab sel select *<CR><Home>  from <CR><Home> where <CR>       ;<Esc>kkk
:iab upd update <CR><Home>   set ( , )<CR><Home>     = ( , )<CR><Home> where <CR>       ;<Esc>kkkk
:iab del delete <CR><Home>  from <CR><Home> where <CR>       ;<Esc>kkk
:iab ins insert into <CR><Home>select *<CR><Home>  from <CR><Home> where <CR>       ;<Esc>kkkk$
:iab cre create table  like ;<Esc>bh
:iab nex '0001MT' \|\| trim(to_char(next value for seq_oid, '00000000000000')) ,
