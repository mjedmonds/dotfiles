"DelimitMate
"command that lets you do one normal mode command and then hops back to insert
"mode

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
execute pathogen#infect()
execute pathogen#helptags()
filetype on
filetype plugin indent on
syntax on

"enable mouse and no highlight search
set mouse=a
set nohls

"setup backup and cleanup dirs
set undofile
set backup
set undodir=~/.vim/undo
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
"set spell
 
set wildmenu
set wildmode=full
"set wildmode=longest:full,full

let g:mapleader=","

"column at 81 charatcers
"set colorcolumn=81
"set colorcolumn=+1  " highlight one column after 'textwidth'
"highlight ColorColumn ctermfg=darkgray

"latex and Session setup
let g:tex_flavor='latex'
let g:tex_conceal = ""

"Auto pairs configuration
let g:AutoPairsUseInsertedCount = 1
let g:AutoPairsFlyMode = 0
"Enable meta key as alt for autopairs for OS X
set macmeta

"Session settings
let g:session_autosave='yes'
let g:session_autoload='no'
let g:session_autoload_periodic = 1
let g:session_command_aliases = 1

"Eclim settings
let g:EclimInfoHighlight = 'Statement'
let g:EclimWarningHighlight = 'WarningMsg'
let g:EclimErrorHighlight = 'Error'
let g:EclimSignLevel = 2

"EasyMotion Leader key
let g:EasyMotion_leader_key = '<Space>'

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

"CtrlP
nmap <F7> :CtrlP<CR>
let g:ctrlp_show_hidden=1
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux

"delete whitespace at the end of lines on <F5>
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"Airline options
"let g:airline_powerline_fonts = 1
let g:airline_theme = 'powerlineish'
set laststatus=2

"colorscheme
colorscheme sunburst

"Custom Snippet dir so pathogen can update it without losing them
"let g:snippets_dir = "~/.vim/snippets"

"Relative line numbers
set relativenumber

"cursorline
set cursorline
hi CursorLine term=none cterm=none ctermbg=3
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

set background=dark

"indent guides settings
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
let g:indent_guides_color_change_percent = 15
IndentLinesEnable

"Wrapper for changing current directory for Eclim
"if !exists('g:vimplugin_running')
"   cd /
"endif

"enable powerline
"source /Users/mark/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
"set laststatus=2

autocmd FileType make set noexpandtab
au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda


"autocmd FileType text colorscheme bw
"autocmd FileType text setlocal spell
"autocmd FileType text setlocal colorcolumn=
