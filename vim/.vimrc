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

"AUTOCOMPLETE SETTINGS ---------------------------------------------------
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"END AUTOCOMPLETE SETTINGS------------------------------------------------

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
let g:EclimInfoHighlight = 'Statement'
let g:EclimWarningHighlight = 'WarningMsg'
let g:EclimErrorHighlight = 'Error'
let g:EclimSignLevel = 2

"EasyMotion settings
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade Comment
hi link EasyMotionTarget2First Search
hi link EasyMotionTarget2Second Search



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
