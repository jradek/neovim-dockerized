let g:airline#extentions#tabline#enabled = 1
let g:airline#extentions#tabline#show_buffers = 0
let g:airline#extentions#tabline#tab_nr_type = 1
let g:airline#extentions#tabline#fnamemod = ":t"
let g:airline_theme = 'solarized'

let g:airline#extensions#keymap#enabled = 0
let g:airline_detect_spelllang = 0

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" let g:airline_symbols.linenr = 'Ξ'
let g:airline_powerline_fonts = 1

" Use deoplete.
set completeopt-=preview
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = '/usr/bin/python3'

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeMapActivateNode = "<CR>"
let file_name = expand("%:p")
nnoremap <C-e> :NERDTreeToggle<CR>

" fzf
nnoremap <silent> ,b :Buffers<CR>
nnoremap <silent> ,f :Files<CR>
nnoremap <silent> ,l :Lines<CR>


" ale
" IMPORTANT: turn off completely with g:ale_enabled, and you can run ALE manually with :ALELint.
let g:ale_sign_column_always = 1
let g:ale_open_list = 1
let g:ale_set_loclist = 0
" NOTE: close quickfix with ':ccl[ose]' and reopne with ':cope[n]'
let g:ale_set_quickfix = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:airline#extentions#ale#open_lnum_symbol = '('
let g:airline#extentions#ale#close_lnum_symbol = ')'
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_delay = 350
let g:ale_echo_msg_format = '[%linter%]%code: %%s'
let g:ale_list_window_size = 5 " Show 5 lines of errors (default: 10)

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" vim markdown
let g:markdown_fenced_languages = ['vim', 'python']
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
