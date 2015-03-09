" ~/.vim/sessions/CplusplusDM.vim:
" Vim session script.
" Created by session.vim 2.7 on 22 January 2015 at 14:22:11.
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
badd +16 .vimrc
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/CUDAadapter.c
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/dm.cpp
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/node.cpp
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/parser.c
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/server.cpp
badd +1 /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/util.cpp
badd +9 /Volumes/_HonorsThesisDynamic/Erlang/RML1/ontologies/owl2/fan_effect_v2.erl
badd +23 /Volumes/GoFlex/ADM/launchDM.sh
badd +24 /Volumes/GoFlex/ADM/launchDM_debug.sh
badd +3 ~/Google\ Drive/Documents/_CPS\ 444/hw9/bool.l
badd +1 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.l
badd +1 /Volumes/_HonorsThesisDynamic/ADM/Parser/erl/src/erl_parser.y
badd +24 /Volumes/_HonorsThesisDynamic/Erlang/RML1/ontologies/owl2/zbrodoff.erl
badd +532 /Volumes/_HonorsThesisStatic/wn20full/wnfull.rdf
badd +1 /Volumes/_HonorsThesisStatic/ontologies/geopolitical.owl
badd +109 ~/Downloads/wn20full/wnfull.rdfs
badd +53 /Volumes/_HonorsThesisStatic/ontologies/SUMO.owl
badd +1 ~/Google\ Drive/Documents/_CPS\ 444/hw6/pvsfilter
badd +1 /Volumes/_HonorsThesisStatic/WordNet.owl
badd +6 ~/Downloads/dict/dbfiles/adj.all
badd +1 ~/Downloads/wandora/bin/Wandora-16g.sh
badd +3 /Volumes/_HonorsThesisStatic/WordNetN3.owl
badd +1 /Volumes/_HonorsThesisDynamic/Erlang/RML1/ontologies/owl2/fan_effect.owl2
badd +20 /Volumes/_HonorsThesisDynamic/Erlang/RML1/ontologies/owl2/zbrodoff.owl2
badd +1 /Volumes/_HonorsThesisDynamic/Erlang/RML1/ontologies/owl2/count.owl2
badd +57 ~/Downloads/raptor2-2.0.15/README
badd +1 ~/Downloads/owlcpp-v0.3.4/doc/build.txt
badd +37 ~/Downloads/owlcpp-v0.3.4/doc/user-config.jam
badd +1 ~/Downloads/owlcpp-v0.3.4/doc/boost-build.jam
badd +1 /Volumes/_HonorsThesisDynamic/ADM/Parser/rdf_sanitizer.sh
badd +1 /Volumes/_HonorsThesisStatic/ontologies/GUM-3-space.owl
argglobal
silent! argdel *
argadd /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/CUDAadapter.c
argadd /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/dm.cpp
argadd /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/node.cpp
argadd /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/parser.c
argadd /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/server.cpp
argadd /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/util.cpp
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/CUDAadapter.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/CUDAadapter.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 57 - ((56 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/dm.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/dm.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/node.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/node.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/parser.c
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/parser.c
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/server.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/server.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((4 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 02|
tabedit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/util.cpp
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
edit /Volumes/_HonorsThesisDynamic/ADM/CplusplusDM/src/util.cpp
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=1 shortmess=aoO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
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
