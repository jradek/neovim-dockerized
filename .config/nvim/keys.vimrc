" map : to ; because it is far easier to type and ; isn;t used anyway (only
" for backward search in current line)
noremap ; :
nnoremap : ;

"This unsets the "last search pattern" register by hitting return
" see:https://stackoverflow.com/a/662914
nnoremap <C-L> :noh<CR><C-L>

" simple save
nnoremap <leader>w :w<CR>

" move to next buffer
" nmap <leader>l :bnext<CR>
" move to next buffer
" nmap <leader>h :bprevious<CR>

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
