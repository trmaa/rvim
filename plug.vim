call plug#begin()
	" Syntax
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'dense-analysis/ale'

	" Fuzi
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	
	Plug 'junegunn/fzf.vim'

	" Color
	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
	Plug 'sheerun/vim-polyglot'
	let g:polyglot_disabled = []  " Enable all
	" Or disable specific ones if needed:
	" let g:polyglot_disabled = ['markdown', 'yaml']
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" COC
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"inoremap <silent><expr> <ESC> coc#pum#visible() ? coc#pum#cancel() : "\<ESC>"

" ALE
let g:ale_pattern_options = {
\   '.*': {'ale_enabled': 0},
\   '\.c$': {'ale_enabled': 0},
\   '\.h$': {'ale_enabled': 0},
\}

let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_echo_warning = 0
let g:show_warnings = 0

" FZF
nnoremap <C-f> :Files<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-h> :History<CR>
