"-----------------------------------------------------------------------
" Plug
"-----------------------------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'chriskempson/base16-vim'
Plug 'Konfekt/FastFold'
Plug 'vim-scripts/guicolorscheme.vim'
Plug 'sjl/gundo.vim'
Plug 'Yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'tomasr/molokai'
Plug 'Shougo/neocomplete.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'gorkunov/smartpairs.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'wellle/targets.vim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-abolish'
Plug 'Chiel92/vim-autoformat'
Plug 'altercation/vim-colors-solarized'
"Plug 'easymotion/vim-easymotion'
"Plug 'whatyouhide/vim-lengthmatters'
Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'lervag/vimtex'
Plug 'chriskempson/base16-vim'
"Plug 'justmao945/vim-clang'

call plug#end()


"-----------------------------------------------------------------------
" General
"-----------------------------------------------------------------------
filetype on
filetype plugin indent on
syntax on

"enable mouse and no highlight search
set mouse=a
set nohls

"relative line numbers
"set relativenumber

"Make backspace key delete current line
set backspace=indent,eol,start

"disable arrow keys
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>

"setup backup and cleanup dirs
set undofile
set backup
set undodir=~/.vim/undo
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

"confirm quitting when attempting to quit without saving
set confirm

"double tapping escape saves
"map <Esc><Esc> :w<CR>

"set the folding option to syntax
set foldmethod=syntax
"only fold the top level by default
set foldnestmax=1

"menu expansion settings
set wildmenu
set wildmode=full
"set wildmode=longest:full,full

" Disable annoying beeping (causes strange 001B character in terminal)
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

"spelling colors/options
autocmd colorscheme * hi clear SpellBad

"leader key
let g:mapleader=","

"unicode
set encoding=utf-8

"cursorline settings
"set cursorline
"hi CursorLine term=none cterm=none ctermbg=3

set number
set smartindent
set cindent
"auto return after 80 characters
"set textwidth=79
"set formatoptions+=t
set ruler

"Tab Settings
set softtabstop=2
set shiftwidth=2
set expandtab

" set faster scrolling 
set ttyfast
set lazyredraw

"allow saving with :W
command! -bang -nargs=? -complete=file W w<bang> <args>

"Disable help menu (hits on insert key - super annoying when you miss
"backspace)
nmap <Help> <nop>

"delete whitespace at the end of lines on <F5>
noremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"auto fix indentation in entire file
nmap <F7> mzgg=G`z<CR>

"enable different cursors based on the mode
"Versions including tmux; are for tmux configurations
if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin"
    " iterm2/mac cursors
    let &t_SI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\""
  else
    " gnome-terminal cursors
    if has("autocmd")
      au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
      au InsertEnter,InsertChange *
        \ if v:insertmode == 'i' | 
        \   silent execute '!echo -ne "\e[6 q"' | redraw! |
        \ elseif v:insertmode == 'r' |
        \   silent execute '!echo -ne "\e[4 q"' | redraw! |
        \ endif
      au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
    endif
  endif
endif

"let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\""
"-----------------------------------------------------------------------

"-----------------------------------------------------------------------
" Latex
"-----------------------------------------------------------------------
let g:tex_flavor='latex'
let g:tex_conceal=""
if has('mac')
  let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
  let g:vimtex_view_general_options = '-r @line @pdf @tex'
  let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']
  function! UpdateSkim(status)
    if !a:status | return | endif

    let l:out = b:vimtex.out()
    let l:cmd = [g:vimtex_view_general_viewer, '-r']
    if !empty(system('pgrep Skim'))
      call extend(l:cmd, ['-g'])
    endif
    if has('nvim')
      call jobstart(l:cmd + [line('.'), l:out])
    elseif has('job')
      call job_start(l:cmd + [line('.'), l:out])
    else
      call system(join(l:cmd + [line('.'), shellescape(l:out)], ' '))
    endif
  endfunction
elseif has('unix')
  let g:vimtex_view_general_viewer = 'xdg-open'
endif
let g:vimtex_view_general_options_latexmk = '-r 1'
let g:vimtex_complete_enabled = 1
"let g:LatexBox_latexmk_options="-pdflatex=lualatex"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Auto pairs
"-----------------------------------------------------------------------
let g:AutoPairsUseInsertedCount = 1
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutToggle = ''
"Enable meta key as alt for autopairs for OS X
if has ("gui_macvim")
  set macmeta
  "alternate settings for a terminal vim, relies on terminal forwarding the
  "option key as +Esc (for iTerm)
  let g:AutoPairsShortcutJump = '<M-n>'
  let g:AutoPairsShortcutFastWrap = '<M-e>'
  let g:AutoPairsShortcutBackInsert = '<M-b>'
else
  let g:AutoPairsShortcutJump = '<A-n>'
  let g:AutoPairsShortcutFastWrap = '<A-e>'
  let g:AutoPairsShortcutBackInsert = '<A-b>'
endif
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" GUI settings
"-----------------------------------------------------------------------
" Diable annoying beep and enable transparency on gui
if has("gui_running")
  " OS X specific
  if has("gui_MacVim")
    set transparency=2
    " Font selection for OS X
    set guifont=Inconsolata:h14
  else
    "Font selection for gvim
    set guifont=Monospace\ 11
  endif

  " Set undercurl as error indicator in gui
  "autocmd colorscheme * hi SpellBad gui=undercurl guisp=red
  " Terminal specific settings
  "else
  "autocmd colorscheme * hi SpellBad cterm=undercurl
endif
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Session
"-----------------------------------------------------------------------
let g:session_autosave='no'
let g:session_autoload='no'
let g:session_autoload_periodic = 1
let g:session_command_aliases = 1
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Neocomplete
"-----------------------------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 1
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Auto close the preview window
let g:neocomplete#enable_auto_close_preview = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" cap max suggestion list
let g:neocomplete#max_list = 15

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" disable buffer completion
"call neocomplete#custom#source('buffer', 'disabled', 1)

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::\w*'
let g:neocomplete#sources#omni#input_patterns.tex =
        \ '\v\\%('
        \ . '\a*cite\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
        \ . '|\a*ref%(\s*\{[^}]*|range\s*\{[^,}]*%(}\{)?)'
        \ . '|hyperref\s*\[[^]]*'
        \ . '|includegraphics\*?%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
        \ . '|%(include%(only)?|input)\s*\{[^}]*'
        \ . '|\a*(gls|Gls|GLS)(pl)?\a*%(\s*\[[^]]*\]){0,2}\s*\{[^}]*'
        \ . '|includepdf%(\s*\[[^]]*\])?\s*\{[^}]*'
        \ . '|includestandalone%(\s*\[[^]]*\])?\s*\{[^}]*'
        \ . ')'

"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Markdown
"-----------------------------------------------------------------------
let g:vim_markdown_preview_hotkey='<leader>-m'
if has('mac')
  let g:vim_markdown_preview_browser='Google Chrome'
endif
let g:vim_markdown_preview_toggle=1
" NOTE: you'll have to disable github preview if you don't have internet
let g:vim_markdown_preview_github=1
let g:vim_markdown_preview_temp_file=0
let g:vim_markdown_math = 1
"-----------------------------------------------------------------------

"
"-----------------------------------------------------------------------
" Utilsnips
"-----------------------------------------------------------------------
let g:UltiSnipsSnippetsDir="~/.vim/snippets"
" Set ultisnips triggers
let g:UltiSnipsExpandTrigger="<c-u>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" NERDTree
"-----------------------------------------------------------------------
nnoremap <F8> :NERDTreeToggle /<CR>
let g:NERDTreeShowHidden=1
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" NERDCommenter
"-----------------------------------------------------------------------
nmap <leader>ch <plug>NERDCommenterInsert
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Tagbar
"-----------------------------------------------------------------------
nmap <F9> :TagbarToggle<CR>
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Gundo
"-----------------------------------------------------------------------
let g:gundo_width = 80
let g:gundo_preview_height = 60
let g:gundo_right = 1
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Airline
"-----------------------------------------------------------------------
"let g:airline_powerline_fonts = 1
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set laststatus=2
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Length Matters
"-----------------------------------------------------------------------
let g:lengthmatters_on_by_default=0
let g:lengthmatters_start_at_column=121
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Clang-format
"-----------------------------------------------------------------------
function! FormatFile()
  let l:lines="all"
  pyf ~/.dotfiles/clang-format.py
endfunction

map <C-K> :call FormatFile()<cr>
imap <C-K> <c-o>:call FormatFile()<cr>
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" vim-clang
"-----------------------------------------------------------------------
let g:clang_auto = 1
let g:clang_cpp_options = '-std=c++ -stdlib=libc++'
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Indent guides
"-----------------------------------------------------------------------
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help']
let g:indent_guides_color_change_percent = 15
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Syntastic
"-----------------------------------------------------------------------
"c settings
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_compiler_options = '-std=c99'

"c++ settings
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++14'

"python settings
let g:syntastic_python_python_exec = '/usr/local/bin/python'

" HTML5
let g:syntastic_html_tidy_exec = 'tidy5'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Colorscheme
"-----------------------------------------------------------------------
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
"set t_Co=256
""set t_Co=88
"if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
      "\ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
  "" Use the guicolorscheme plugin to makes 256-color or 88-color
  "" terminal use GUI colors rather than cterm colors.
  "runtime! plugin/guicolorscheme.vim
  "GuiColorScheme base16-ocean
"else
  "" For 8-color 16-color terminals or for gvim, just use the
  "" regular :colorscheme command.
  "colorscheme base16-ocean
"endif
"let base16colorspace=256
"colorscheme base16-ocean
colorscheme solarized 
"set background=dark
set background=light

  
" load colorscheme from base16-shell (loads base16-ocean)
"if filereadable(expand("~/.vimrc_background"))
  "source ~/.vimrc_background
"endif

" enable 256 colors for gnome-terminal
"if $COLORTERM == 'gnome-terminal'
  "set t_Co=256
"endif

"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" File type autocommands
"-----------------------------------------------------------------------
autocmd BufNewFile,BufRead *.cu set ft=cuda
autocmd BufNewFile,BufRead *.cuh set ft=cuda
autocmd BufNewFile,BufRead *.ypp set ft=yacc
autocmd BufNewFile,BufRead *.launch set ft=xml
autocmd BufNewFile,BufRead *.urdf set ft=xml
autocmd FileType tex :NoMatchParen
"-----------------------------------------------------------------------


"========================================================================
" DEPRECIATED/UNUSED SETTINGS (but might be worht somethign later)
"========================================================================


"-----------------------------------------------------------------------
" neovim
"-----------------------------------------------------------------------
"let g:python_host_prog = '/usr/local/bin/python'
"let g:python3_host_prog = '/usr/local/bin/python3'
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
" Pathogen
"-----------------------------------------------------------------------
"execute pathogen#infect()
"execute pathogen#helptags()
"-----------------------------------------------------------------------

"-----------------------------------------------------------------------
"YCM settings
"-----------------------------------------------------------------------
"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
"let g:ycm_complete_in_comments = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0
""jump to definition/declaration
"nnoremap <leader>jd :YcmCompleter GoTo<CR>
"let g:ycm_filetype_blacklist = {
"      \ 'tagbar' : 1,
"      \ 'qf' : 1,
"      \ 'notes' : 1,
"      \ 'markdown' : 1,
"      \ 'unite' : 1,
"      \ 'text' : 0,
"      \ 'vimwiki' : 1,
"      \ 'pandoc' : 1,
"      \ 'infolog' : 1,
"      \ 'mail' : 1
"      \}
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
"SuperTab settings
"-----------------------------------------------------------------------
"tell subertab to use eclim autocomplete if possible
"let g:SuperTabDefaultCompletionType = 'context'
"DO NOT REMOVE ^ OR \s
"let g:SuperTabNoCompleteAfter = ['^', '\s', ';']
"let g:SuperTabClosePreviewOnPopupClose = 1
"ignore includes in autocomplete
"set complete-=i
"-----------------------------------------------------------------------

"
"-----------------------------------------------------------------------
"set shell for neovim/YCM support
"-----------------------------------------------------------------------
"let g:python_host_prog = '/usr/local/bin/python2.7'
"set shell=/bin/bash\
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
"This allows vim clipboard to play nicely with tmux's clipboard
"set clipboard=unnamed
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
"NOTE - obselete with LengthMatters plugin
"-----------------------------------------------------------------------
"column at 81 charatcers
"set colorcolumn=81
"set colorcolumn=+1  " highlight one column after 'textwidth'
"highlight ColorColumn ctermfg=darkgray
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
"Eclim
"-----------------------------------------------------------------------
"Wrapper for changing current directory for Eclim
"if !exists('g:vimplugin_running')
"   cd /
"endif
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
"Custom Snippet dir so pathogen can update it without losing them
"-----------------------------------------------------------------------
"let g:snippets_dir = "~/.vim/snippets"
"-----------------------------------------------------------------------


"-----------------------------------------------------------------------
"EasyMotion
"-----------------------------------------------------------------------
"hi link EasyMotionTarget ErrorMsg
"hi link EasyMotionShade Comment
"hi link EasyMotionTarget2First Search
"hi link EasyMotionTarget2Second Search
"-----------------------------------------------------------------------
