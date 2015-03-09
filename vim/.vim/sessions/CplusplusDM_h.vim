" ~/.vim/sessions/CplusplusDM_h.vim:
" Vim session script.
" Created by session.vim 2.7 on 07 January 2015 at 16:54:42.
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
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/CUDAadapter.h
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/dm.h
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/node.h
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/parser.h
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/server.h
badd +2 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/util.h
badd +658 ~/SpiderOak\ Hive/_ECE\ 431L/CD1/Code/cytonControl.cpp
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/Cqueue.c
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/Cqueue.h
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/CUDAserver.cu
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/CUDAserver.cuh
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/uthash.h
badd +1 /Volumes/_HonorsThesisDynamic/thread_execution_log.txt
badd +26 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.h
argglobal
silent! argdel *
argadd /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/Cqueue.c
argadd /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/Cqueue.h
argadd /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/CUDAserver.cu
argadd /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/CUDAserver.cuh
argadd /Volumes/_HonorsThesisDynamic/ADM/CUDAserver/src/uthash.h
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/CUDAadapter.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/CUDAadapter.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 35 - ((0 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 019|
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/dm.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/dm.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 45 - ((5 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 018|
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/node.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/node.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 59 - ((53 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
59
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/parser.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/parser.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 21 - ((7 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 025|
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/server.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/server.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/util.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/util.h
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 44 - ((43 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
44
normal! 0
tabnext 4
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
tabnext 4
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
