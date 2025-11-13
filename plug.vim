call plug#begin()
	" Syntax
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" FZF
nnoremap <C-f> :Files<CR>
nnoremap <C-g> :Rg<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-h> :History<CR>
