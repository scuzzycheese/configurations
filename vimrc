set nocp
filetype plugin on

set t_kb=
fixdel
set ts=3
set noai
syntax off
set hlsearch
syntax off

au BufWinLeave * mkview
au BufWinEnter * silent loadview

map ff v%zf

map <C-t> :browse tabnew<CR>
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
syntax region cComment start=/\/\*/ end=/\*\// contains=cComment
syntax region cOPComment start=/\/\// end=/$/ contains=cOPComment
