filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

set nocp

set t_kb=
fixdel
set ts=3
set noai
set hlsearch
set tabpagemax=50
set ignorecase
syntax enable
syntax on



let s:newfile = "false"

function! SetNewFileTrue()
	let s:newfile = "true"
endfunction

au BufNew * call SetNewFileTrue()

function! MyLoadView()
	if s:newfile != "true"
		loadview
	endif
endfunction

au BufWinLeave * silent! mkview
au BufWinEnter * call MyLoadView()





map ff v%zf

map <C-d> :vert diffsplit<CR>

map <C-t> :tabnew<CR>
map <S-Right> :tabnext<CR>:source ~/.vimrc<CR>
map <S-Left> :tabprev<CR>:source ~/.vimrc<CR>

"handy subversion remappings
cnoremap svn !svn

set fo+=or
set comments=sl:/**,mb:\ *,elx:\ */

"highlight cComment ctermfg=Magenta
"highlight cOPComment ctermfg=Magenta
"highlight cComment guifg=Magenta
"highlight cOPComment guifg=Magenta
"syntax region cComment start=/\/\*/ end=/\*\// contains=cComment
"syntax region cOPComment start=/\/\// end=/$/ contains=cOPComment

vnoremap > >gv
vnoremap < <gv
