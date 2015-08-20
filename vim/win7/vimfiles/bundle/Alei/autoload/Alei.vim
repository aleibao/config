" {{{1 introdution
" Alei: tool to join and align SQL columns
" Author: mingqing lei
" Date: Aug 9, 2014
" Version: 1
"
" for selected line, delete waste characters, join every n lines, and align by comma
"
" example:
" China
" American  124
" England  3,
" France jkj;
" Italy
" Germany
" after 4,9call Alei#Alei(2), echo:
" China   , American , 
" England , France   , 
" Italy   , Germany
"
" Alei for columns without alias
" Aleis for columns with alias
" {{{1 function Alei#Alei(column_count) range
fun! Alei#Alei(column_count) range
  " get begin line and end line
  let begin_line   = a:firstline
  let end_line     = a:lastline
  let column_count = a:column_count

  " delete waste characters
  execute 'silent '.begin_line.','.end_line.'s/^\W*\(\w\+\).*/\1?/'

  " join the lines every column_count line,  from end to begin
    let join_times = (end_line - begin_line + 1) / column_count
    let remainder  = (end_line - begin_line + 1) % column_count
    let gap_lines  = join_times

    if remainder > 0
      let current_line = end_line - remainder + 1
      execute 'silent '.current_line.','.end_line.'join'
      let end_line -= remainder
      let gap_lines = join_times + 1
    endif

    while join_times > 0
      let current_line = end_line - column_count + 1
      execute 'silent '.current_line.','.end_line.'join'
      let end_line -= column_count
      let join_times -= 1
    endwhile

    " align 
    if gap_lines > 1
      let end_line = begin_line + gap_lines - 1
      execute 'silent '.begin_line.','.end_line.'Align ?'
      execute 'silent '.begin_line.','.end_line.'s/?/,/g'
      execute 'silent '.begin_line.','.end_line.'s/^/       /'
      execute 'silent '.end_line.'s/,\s*$//'
    endif

    execute ':'.end_line
    execute 'nohl'

endfun

" {{{1 function Alei#Aleis(column_count) range
fun! Alei#Aleis(column_count) range
  " get begin line and end line
  let begin_line   = a:firstline
  let end_line     = a:lastline
  let column_count = a:column_count

  " delete waste characters
  execute 'silent '.begin_line.','.end_line.'s/^\W*\(\w\+.\+\w\)\s*[,]*\s*$/\1?/'

  " join the lines every column_count line,  from end to begin
    let join_times = (end_line - begin_line + 1) / column_count
    let remainder  = (end_line - begin_line + 1) % column_count
    let gap_lines  = join_times

    if remainder > 0
      let current_line = end_line - remainder + 1
      execute current_line.','.end_line.'join'
      let end_line -= remainder
      let gap_lines = join_times + 1
    endif

    while join_times > 0
      let current_line = end_line - column_count + 1
      execute current_line.','.end_line.'join'
      let end_line -= column_count
      let join_times -= 1
    endwhile

    " align 
    if gap_lines > 1
      let end_line = begin_line + gap_lines - 1
      execute begin_line.','.end_line.'Align ?'
      execute 'silent '.begin_line.','.end_line.'s/?/,/g'
      execute 'silent '.begin_line.','.end_line.'s/^/       /'
    endif

    execute ':'.end_line
    execute 'nohl'

endfun

