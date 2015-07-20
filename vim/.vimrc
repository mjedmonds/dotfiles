"pathogen infection!
execute pathogen#infect()
execute pathogen#helptags()

filetype on
filetype plugin indent on
syntax on

"enable mouse and no highlight search
set mouse=a
set nohls

"relative line numbers
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

"confirm quitting when attempting to quit without saving
set confirm

"double tapping escape saves
map <Esc><Esc> :w<CR>

"set the folding option to syntax
"set foldmethod=syntax
 
"menu expansion settings
set wildmenu
set wildmode=full
"set wildmode=longest:full,full

" Disable annoying beeping
set noerrorbells
set vb t_vb=

"spelling colors/options
autocmd colorscheme * hi clear SpellBad

" Diable annoying beep and enable transparency on gui
if has("gui_running")
   set transparency=5
   autocmd GUIEnter * set vb t_vb=
   " Set undercurl as error indicator in gui
   autocmd colorscheme * hi SpellBad gui=undercurl guisp=red
   "Font selection
   set guifont=Inconsolata:h14
" Terminal specific settings
else
   autocmd colorscheme * hi SpellBad cterm=undercurl
endif

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
let g:tex_conceal=""
"let g:LatexBox_latexmk_options="-pdflatex=lualatex"

"Auto pairs configuration
let g:AutoPairsUseInsertedCount = 1
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutToggle = '' 

"Enable meta key as alt for autopairs for OS X
if has ("gui_macvim")
   set macmeta
   let g:AutoPairsShortcutJump = '<M-n>'
   let g:AutoPairsShortcutFastWrap = '<M-e>'
   let g:AutoPairsShortcutBackInsert = '<M-b>'
   "alternate settings for a terminal vim, relies on terminal forwarding the
   "option key as +Esc (for iTerm)
else
   let g:AutoPairsShortcutJump = '<Esc>n'
   let g:AutoPairsShortcutFastWrap = '<Esc>e'
   let g:AutoPairsShortcutBackInsert = '<Esc>b'
endif

"Session settings
let g:session_autosave='no'
let g:session_autoload='no'
let g:session_autoload_periodic = 1
let g:session_command_aliases = 1

"EasyMotion settings
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search

"YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_confirm_extra_conf = 0 
"jump to definition/declaration
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 0,
      \ 'vimwiki' : 1,
      \ 'pandoc' : 1,
      \ 'infolog' : 1,
      \ 'mail' : 1
      \}

"SuperTab settings
"tell subertab to use eclim autocomplete if possible
"let g:SuperTabDefaultCompletionType = 'context'
"DO NOT REMOVE ^ OR \s
"let g:SuperTabNoCompleteAfter = ['^', '\s', ';']
"let g:SuperTabClosePreviewOnPopupClose = 1
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

"delete whitespace at the end of lines on <F5>
noremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"auto fix indentation in entire file
nmap <F7> mzgg=G`z<CR>

"Gundo
nnoremap <F6> :GundoToggle<CR>
let g:gundo_width = 80
let g:gundo_preview_height = 60
let g:gundo_right = 1

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

"cursorline settings
set cursorline
hi CursorLine term=none cterm=none ctermbg=3

"Tab Settings
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
"Versions including tmux; are for tmux configurations
"let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\""
let &t_EI = "\<Esc>P\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\""

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

"specific file type settings
autocmd FileType make set noexpandtab
autocmd BufNewFile,BufRead *.cu set ft=cuda
autocmd BufNewFile,BufRead *.cuh set ft=cuda
"autocmd BufEnter * if &filetype == "" | setlocal ft=txt | endif

