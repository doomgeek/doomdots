" todo.txt syntax file
" Language:     todo.txt files
" Maintainer:   Matthew Hardcastle
" Last Change:  Tue Jul 29 08:36:40 MDT 2014
" Version:      1

if exists("b:current_syntax")
    finish
endif

setlocal iskeyword+=:
syn case ignore

syn match todo_wip "^\s*\[w\].*$"
syn match todo_blocked "^\s*\[b\].*$"
syn match todo_complete "^\s*\[\*\].*$"

highlight link todo_wip Type
highlight link todo_blocked Error
highlight link todo_complete Comment

let b:current_syntax = "todo.txt"
