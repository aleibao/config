" Alei: tool to join and align SQL columns
" Author: mingqing lei
" Date: Aug 9, 2014
" Version: 1
" for selection line, delete waste characters, join every n lines, and align by comma
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
com! -range -nargs=* Alei <line1>,<line2>call Alei#Alei(<q-args>)
com! -range -nargs=* Aleis <line1>,<line2>call Alei#Aleis(<q-args>)
