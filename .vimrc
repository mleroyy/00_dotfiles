"----------------------------------------------------------
"Auto commands
"----------------------------------------------------------
"autocmd	VimEnter * NERDTree
"----------------------------------------------------------
"Settings
"----------------------------------------------------------
"colorscheme mustang
syntax on								"Color activated
filetype plugin on
set path+=**							"Search down into subfolders
set nocompatible						"Don't act like vi
set autoread							"Auto reload changed files
set wildmenu							"Tab autocomplete in command mode
set shiftwidth=4						"Indenting is 4 spaces
set autoindent							"Turns on
set smartindent
set cindent
set splitright							"Open new splits to the right
set splitbelow							"Open new splits to the bottom
set nowrap								"Don't wrap long lines
set list
set listchars=extends:→					"Show arrow if line contnues rightwards
set listchars+=precedes:←				"Show arrow if line contnues rightwards
set nobackup nowritebackup noswapfile	"Turn off backup files
set hlsearch							"Highlight search results
set timeoutlen=1000 ttimeoutlen=0		"Remove timeout when hitting escape
set showcmd								"Show commands
set number								"Sow numbers
set relativenumber
set showmatch							"Afficher les paranthèses correspondantes
set tabstop=4							"Modifier la taille des tabulations
set incsearch							"Afficher les résultats de la recherche au moment de la saisie
set autowrite							"Automatically :write before running commands
set ruler								"Show the cursor position all the time
set listchars=eol:¬,tab:\|\ ,trail:.	"Show $ at the end of the line
"----------------------------------------------------------
"Mapping
"----------------------------------------------------------
"Quick pairs
"nmap <> <>

inoremap jj <Esc>						"Easier escaping
inoremap {<Enter> {<CR>}<Up><Enter>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

"Mapping NORMAL mode
"imap <leader>' ''<ESC>i
"imap <leader>" ""<ESC>i
"imap <leader>( ()<ESC>i
"imap <leader>[ []<ESC>i
"imap <leader>{ {}<ESC>i

"Unmap the arrow keys in NORMAL mode
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>

"Unmap the arrow keys in INSERT mode
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>
"ino <cap_lock> <ESC>

"Unmap the arrow keys in VISUAL mode
vno <down> <Nop>
vno <up> <Nop>
vno <left> <Nop>
vno <right> <Nop>

iabbr email mleroy@student.42.fr
execute pathogen#infect()
"----------------------------------------------------------
"Colors
"----------------------------------------------------------
set 		textwidth=80
set 		colorcolumn=+1
"highlight	ColorColumn ctermbg=2
highlight	NonText guifg=#4a4a59
highlight	SpecialKey guifg=#4a4a59
hi			vimString guifg=#00ff00 guibg=#990000
"----------------------------------------------------------
"Snippets
"----------------------------------------------------------
nnoremap ,html :-1read ~/.vim/.skeleton.html<CR>3jwf>a
