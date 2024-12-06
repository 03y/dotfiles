                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set tabstop=4       " The width of a TAB is set to 4.

set ignorecase
set smartcase

set mouse=a

nmap <F8> :TagbarToggle<CR>
autocmd FileType c,cpp,go,py nested :TagbarOpen

set listchars=tab:→\ ,trail:·,extends:>,precedes:<,space:·
set list

" spell check
hi SpellBad term=underline cterm=underline ctermfg=9 ctermbg=303030 gui=undercurl guisp=Red

" turn hybrid line numbers on
set number relativenumber
set nu rnu

" term fill window
"set termwinsize=50*0

set path+=**

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

call plug#begin()
Plug 'lervag/vimtex'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'jstemmer/gotags'
Plug 'fatih/vim-go'
Plug 'wolandark/vim-live-server'
Plug 'majutsushi/tagbar'
call plug#end()

