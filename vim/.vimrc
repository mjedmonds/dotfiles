"
"pathogen infection!
execute pathogen#infect()
execute pathogen#helptags()

filetype on
filetype plugin indent on
syntax on

"enable mouse and no highlight search
set mouse=a
set nohls
set relativenumber

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
"set spell

"confirm quitting when attempting to quit without saving
set confirm
 
"menu expansion settings
set wildmenu
set wildmode=full
"set wildmode=longest:full,full

"leader key
let g:mapleader=","

"This allows vim clipboard to play nicely with tmux's clipboard
set clipboard=unnamed

"NOTE - obselete with LengthMatters plugin 
"column at 81 charatcers
"set colorcolumn=81
"set colorcolumn=+1  " highlight one column after 'textwidth'
"highlight ColorColumn ctermfg=darkgray

"latex setup
let g:tex_flavor='latex'
let g:tex_conceal = ""

"Auto pairs configuration
let g:AutoPairsUseInsertedCount = 1
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutToggle = '' 
let g:AutoPairsShortcutJump = '<Esc>n'
let g:AutoPairsShortcutFastWrap = '<Esc>e'
let g:AutoPairsShortcutBackInsert = '<Esc>b'

"Enable meta key as alt for autopairs for OS X
if has ("gui_macvim")
   set macmeta
endif

"Session settings
let g:session_autosave='no'
let g:session_autoload='no'
let g:session_autoload_periodic = 1
let g:session_command_aliases = 1

"Eclim settings
"let g:EclimInfoHighlight = 'Statement'
"let g:EclimWarningHighlight = 'WarningMsg'
"let g:EclimErrorHighlight = 'Error'
"let g:EclimSignLevel = 2

"EasyMotion settings
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search

"YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"


"SuperTab settings
"tell subertab to use eclim autocomplete if possible
let g:SuperTabDefaultCompletionType = 'context'
"DO NOT REMOVE ^ OR \s
let g:SuperTabNoCompleteAfter = ['^', '\s', ';']
let g:SuperTabClosePreviewOnPopupClose = 1
"ignore includes in autocomplete
"set complete-=i

"NERDTree
nnoremap <F8> :NERDTreeToggle /<CR>
let g:NERDTreeShowHidden=1

"Tagbar
nmap <F9> :TagbarToggle<CR>

"Disable help menu (hits on insert key - super annoying when you miss
"backspace)
nmap <Help> <nop>

"CtrlP
"nmap <F7> :CtrlP<CR>
"let g:ctrlp_show_hidden=1
"let g:ctrlp_user_command = 'find %s -type f'        " Mac OSX/Linux

"delete whitespace at the end of lines on <F5>
noremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"auto fix indentation
nmap <F7> mzgg=G`z<CR>

"Airline options
"let g:airline_powerline_fonts = 1
let g:lightline = {
      \ 'colorscheme': 'solarized_dark',
      \ }
set laststatus=2

"Length Matters Settings
let g:lengthmatters_on_by_default=0
let g:lengthmatters_start_at_column=81

"Custom Snippet dir so pathogen can update it without losing them
"let g:snippets_dir = "~/.vim/snippets"

"Relative line numbers
"set relativenumber

"cursorline
set cursorline
hi CursorLine term=none cterm=none ctermbg=3

"spelling colors/options
autocmd colorscheme * hi clear SpellBad
autocmd colorscheme * hi SpellBad gui=undercurl guisp=red

set guifont=Inconsolata:h15

set expandtab
set softtabstop=3
set shiftwidth=3
"auto return after 80 characters
"set textwidth=79
"set formatoptions+=t
set ruler
set number
set autoindent
set cindent

" setup colorscheme
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
set t_Co=256
"set t_Co=88
if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
  \ filereadable(expand("$HOME/.vim/plugin/guicolorscheme.vim"))
   " Use the guicolorscheme plugin to makes 256-color or 88-color
   " terminal use GUI colors rather than cterm colors.
   runtime! plugin/guicolorscheme.vim
   GuiColorScheme rastafari
 else
   " For 8-color 16-color terminals or for gvim, just use the
   " regular :colorscheme command.
   colorscheme solarized
   endif


set background=dark

"enable different cursors based on the mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\""

"indent guides settings
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help']
let g:indent_guides_color_change_percent = 15

"-------------------------------------
"syntastic settings
"-------------------------------------
"c settings
let g:syntastic_c_compiler = 'clang'
let g:syntastic_c_compiler_options = '-std=c99'

"c++ settings
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++0x'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"-------------------------------------

"Wrapper for changing current directory for Eclim
"if !exists('g:vimplugin_running')
"   cd /
"endif

"enable powerline
"source /Users/mark/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
"set laststatus=2

autocmd FileType make set noexpandtab
autocmd BufNewFile,BufRead *.cu set ft=cuda
autocmd BufNewFile,BufRead *.cuh set ft=cuda
"autocmd BufEnter * if &filetype == "" | setlocal ft=txt | endif

"autocmd FileType text colorscheme bw
"autocmd FileType text setlocal spell
"autocmd FileType text setlocal colorcolumn=
