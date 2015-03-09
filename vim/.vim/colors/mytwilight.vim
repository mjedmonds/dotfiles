set background=dark
highlight clear
if exists("syntax on")
	syntax reset
endif
let g:colors_name="mytwilight"
hi Normal guifg=#dbdbdb guibg=#1c1c1c
hi Comment guifg=#8c8c8c guibg=NONE
hi Constant guifg=#b8b551 guibg=NONE
hi CursorLine guifg=NONE guibg=#353535
hi String guifg=#59945a guibg=NONE
hi htmlTagName guifg=#5285c7 guibg=NONE
hi Identifier guifg=#b8b551 guibg=NONE
hi Statement guifg=#b85353 guibg=NONE
hi PreProc guifg=#646fb0 guibg=NONE
hi Type guifg=#b8b551 guibg=NONE
hi Function guifg=#5285c7 guibg=NONE
hi Repeat guifg=#a1844d guibg=NONE
hi Operator guifg=#b88c53 guibg=NONE
hi Error guibg=#ff0000 guifg=#ffffff
hi TODO guibg=#0011ff guifg=#ffffff
hi LineNr guifg=#686868 guibg=NONE
hi link character	constant
hi link number	constant
hi link boolean	constant
hi link Float		Number
hi link Conditional	Repeat
hi link Label		Statement
hi link Keyword	Statement
hi link Exception	Statement
hi link Include	PreProc
hi link Define	PreProc
hi link Macro		PreProc
hi link PreCondit	PreProc
hi link StorageClass	Type
hi link Structure	Type
hi link Typedef	Type
hi link htmlTag	Special
hi link Tag		Special
hi link SpecialChar	Special
hi link Delimiter	Special
hi link SpecialComment Special
hi link Debug		Special
