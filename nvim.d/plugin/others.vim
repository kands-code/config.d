"""""""""""""""""""""""
"" add some file types
"""""""""""""""""""""""

"" mma
autocmd BufNewFile,BufRead *.wl setfiletype mma
autocmd BufNewFile,BufRead *.wls setfiletype mma
autocmd BufNewFile,BufRead *.mma setfiletype mma

"" Julia
autocmd BufNewFile,BufRead *.jl setfiletype julia

"" agda
autocmd BufNewFile,BufRead *.agda setfiletype agda

"" prolog
autocmd BufNewFile,BufRead *.prolog setfiletype prolog

"" golang
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>
