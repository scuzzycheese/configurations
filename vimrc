set nocp
filetype plugin on

set t_kb=
fixdel
set ts=3
set noai
syntax off
set hlsearch
syntax off
set tabpagemax=50
set ignorecase



"----------nasty little piece of code to handle new buffer errors
let s:newfile = "false"

function SetNewFileTrue()
	let s:newfile = "true"
endfunction

au BufNew * call SetNewFileTrue()

function MyLoadView()
	if s:newfile != "true"
		loadview
	endif
endfunction

au BufWinLeave * silent! mkview
au BufWinEnter * call MyLoadView()

"-----------------------

map ff v%zf

map <C-d> :vert diffsplit<CR>

map <C-t> :tabnew<CR>
map <S-Right> :tabnext<CR>:source ~/.vimrc<CR>
map <S-Left> :tabprev<CR>:source ~/.vimrc<CR>

"handy for making my mac work
map > :tabnext<CR>:source ~/.vimrc<CR>
map < :tabprev<CR>:source ~/.vimrc<CR>

"handy subversion remappings
cnoremap svn !svn

set fo+=or
set comments=sl:/**,mb:\ *,elx:\ */

highlight cComment ctermfg=Magenta
highlight cOPComment ctermfg=Magenta
highlight cComment guifg=Magenta
highlight cOPComment guifg=Magenta
syntax region cComment start=/\/\*/ end=/\*\// contains=cComment
syntax region cOPComment start=/\/\// end=/$/ contains=cOPComment

"this is a work in progrss
xmap <Tab> :<BS><BS><BS><BS><BS>%s/\%V/\t/<CR>
xmap <BS> :<BS><BS><BS><BS><BS>%s/\%V\t//<CR>
smap <Tab> :%s/\%V/\t/<CR>
smap <BS> :%s/\%V\t//<CR>
