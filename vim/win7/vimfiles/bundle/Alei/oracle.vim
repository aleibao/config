"sql补齐
:iab sel select *<CR><Home>  from <CR><Home> where <CR>       ;<Esc>kkk
:iab upd update <CR><Home>   set ( , )<CR><Home>     = ( , )<CR><Home> where <CR>       ;<Esc>kkkk
:iab del delete <CR><Home>  from <CR><Home> where <CR>       ;<Esc>kkk
:iab ins insert into <CR><Home>select *<CR><Home>  from <CR><Home> where <CR>       ;<Esc>kkkk$
:iab cre create table  like ;<Esc>bh
:iab nex '0001MG'\|\|TO_CHAR(SEQ_OID.NEXTVAL,'FM00000000000000')<Esc>
:iab tss '2014-01-01 00:00:01'
:iab eve (select pk_event_type from yls_event_type where event_name = '')<Esc>h
:iab hea /*<CR> * 问题描述：<CR><CR>* 测试库执行时间：<CR>* 生产库执行时间：<CR>*/<CR><ESC>kkkkk$
