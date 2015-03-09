" ~/.vim/sessions/erl_parser.vim:
" Vim session script.
" Created by session.vim 2.7 on 21 January 2015 at 13:07:15.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrL
silent! set guifont=Inconsolata:h15
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 /Volumes/_HonorsThesisDynamic/ADM/Parser/parser.c
badd +1 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.h
badd +1 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.l
badd +1 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.y
badd +13 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/Makefile
badd +112 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.output
badd +24 .networkautologin.js
badd +0 /Volumes/_HonorsThesisDynamic/ADM/Parser/rdf/geopolitical.owl
badd +0 /Volumes/_HonorsThesisDynamic/ADM/Parser/rdf/geoTriple.owl
argglobal
silent! argdel *
argadd /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.h
argadd /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.l
argadd /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.y
edit /Volumes/_HonorsThesisDynamic/ADM/Parser/parser.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/Parser/parser.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
3argu
edit /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.l
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
2argu
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 43 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 040|
tabedit /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.y
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
3argu
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/Parser/rdf/geopolitical.owl
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/Parser/rdf/geopolitical.owl
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 863 - ((6 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
863
normal! 017|
tabedit /Volumes/_HonorsThesisDynamic/ADM/Parser/rdf/geoTriple.owl
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/Parser/rdf/geoTriple.owl
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 882 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
882
normal! 0
tabnext 6
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 6
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
