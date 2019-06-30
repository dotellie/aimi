hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "aimi"

if &background ==# "dark"
    let s:aimi_0 = "#2b313f"
    let s:aimi_1 = "#3c475a"
    let s:aimi_2 = "#4f5b6d"
    let s:aimi_3 = "#656e7d"
    let s:aimi_4 = "#9aa6ac"
    let s:aimi_5 = "#c0cacf"
    let s:aimi_6 = "#eef4f7"
    let s:aimi_7 = "#ffffff"

    let s:aimi_8 = "#e38390"
    let s:aimi_9 = "#f9a7e4"
    let s:aimi_A = "#8ca1c7"
    let s:aimi_B = "#81cd84"
    let s:aimi_C = "#d3f395"
    let s:aimi_D = "#88d2db"
    let s:aimi_E = "#f7c076"
    let s:aimi_F = "#c59bf6"
else
    let s:aimi_0 = "#ffffff"
    let s:aimi_1 = "#eef4f7"
    let s:aimi_2 = "#c0cacf"
    let s:aimi_3 = "#9aa6ac"
    let s:aimi_4 = "#656e7d"
    let s:aimi_5 = "#4f5b6d"
    let s:aimi_6 = "#3c475a"
    let s:aimi_7 = "#2b313f"

    let s:aimi_8 = "#e35c6e"
    let s:aimi_9 = "#da63bb"
    let s:aimi_A = "#6d88b8"
    let s:aimi_B = "#558b58"
    let s:aimi_C = "#7c9946"
    let s:aimi_D = "#3fa0ad"
    let s:aimi_E = "#c17914"
    let s:aimi_F = "#974bef"
endif

let s:italicize_comments = ""

function! s:hi(group, guifg, guibg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . substitute(a:attr, "undercurl", "underline", "")
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

" Text
call s:hi("Normal", s:aimi_5, s:aimi_0, "", "")
call s:hi("Title", s:aimi_D, "", "", "")
call s:hi("NonText", s:aimi_2, "", "", "")

call s:hi("SpellBad", s:aimi_8, "", "undercurl", s:aimi_8)
call s:hi("SpellCap", s:aimi_E, "", "undercurl", s:aimi_E)
call s:hi("SpellLocal", s:aimi_3, "", "undercurl", s:aimi_3)
call s:hi("SpellRare", s:aimi_3, "", "undercurl", s:aimi_3)

" General UI
call s:hi("SignColumn", s:aimi_2, s:aimi_0, "", "")
call s:hi("ColorColumn", "", s:aimi_1, "", "")
call s:hi("LineNr", s:aimi_2, "", "", "")
call s:hi("Search", s:aimi_0, s:aimi_D, "", "")
call s:hi("EndOfBuffer", s:aimi_2, s:aimi_0, "NONE", "")
call s:hi("Folded", s:aimi_3, s:aimi_1, "", "")
call s:hi("FoldColumn", s:aimi_3, s:aimi_1, "", "")
call s:hi("Directory", s:aimi_4, "", "", "")
call s:hi("SpecialKey", s:aimi_3, s:aimi_1, "", "")

" Menus
call s:hi("WildMenu", s:aimi_5, s:aimi_2, "", "")
call s:hi("Pmenu", s:aimi_5, s:aimi_1, "", "")
call s:hi("PmenuSel", s:aimi_0, s:aimi_D, "", "")
call s:hi("PmenuSbar", s:aimi_5, s:aimi_2, "", "")
call s:hi("PmenuThumb", s:aimi_5, s:aimi_D, "", "")

" Separators
call s:hi("VertSplit", s:aimi_0, s:aimi_2, "", "")
call s:hi("TabLine", s:aimi_5, s:aimi_2, "NONE", "")
call s:hi("TabLineFill", s:aimi_5, s:aimi_2, "NONE", "")
call s:hi("TabLineSel", s:aimi_5, s:aimi_3, "NONE", "")
call s:hi("StatusLine", s:aimi_5, s:aimi_2, "NONE", "")
call s:hi("StatusLineNC", s:aimi_2, s:aimi_2, "NONE", "")

" Cursors
call s:hi("Cursor", s:aimi_0, s:aimi_5, "", "")
call s:hi("CursorIM", s:aimi_0, s:aimi_5, "", "")
call s:hi("CursorLine", "", s:aimi_1, "", "")
call s:hi("CursorColumn", "", s:aimi_1, "", "")
call s:hi("iCursor", s:aimi_0, s:aimi_5, "", "")
call s:hi("CursorLineNr", s:aimi_3, "", "", "")

call s:hi("Visual", "", s:aimi_1, "", "")
call s:hi("MatchParen", s:aimi_5, s:aimi_2, "", "")

" Messages
call s:hi("Question", s:aimi_A, "", "", "")
call s:hi("MoreMsg", s:aimi_A, "", "", "")
call s:hi("WarningMsg", s:aimi_0, s:aimi_C, "", "")
call s:hi("ErrorMsg", s:aimi_0, s:aimi_8, "", "")
call s:hi("Error", s:aimi_0, s:aimi_8, "", "")

" Neovim
call s:hi("healthError", s:aimi_0, s:aimi_8, "", "")
call s:hi("healthSuccess", s:aimi_0, s:aimi_B, "", "")
call s:hi("healthWarning", s:aimi_0, s:aimi_C, "", "")
call s:hi("NvimInternalError", s:aimi_0, s:aimi_8, "", "")

" ### Syntax ###

" Primitives
let s:prim = s:aimi_F

call s:hi("Boolean", s:prim, "", "", "")
call s:hi("Character", s:prim, "", "", "")
call s:hi("Float", s:prim, "", "", "")
call s:hi("Number", s:prim, "", "", "")

call s:hi("String", s:aimi_B, "", "", "")

" Comments
call s:hi("Comment", s:aimi_2, "", s:italicize_comments, "")
call s:hi("SpecialComment", s:aimi_D, "", s:italicize_comments, "")
call s:hi("Todo", s:aimi_E, "NONE", "", "")

" Operators
let s:op = s:aimi_A
call s:hi("Conditional", s:op, "", "", "")
call s:hi("Delimiter", s:op, "", "", "")
call s:hi("Identifier", s:op, "", "NONE", "")
call s:hi("Operator", s:op, "", "NONE", "")
call s:hi("Keyword", s:op, "", "NONE", "")
call s:hi("Include", s:op, "", "", "")

" Types
call s:hi("Type", s:aimi_F, "", "NONE", "")
call s:hi("Typedef", s:aimi_F, "", "", "")

" Others
" TODO: Categorize
call s:hi("Function", s:aimi_D, "", "", "")
call s:hi("Define", s:aimi_8, "", "", "")
call s:hi("Exception", s:aimi_8, "", "", "")
call s:hi("Label", s:aimi_4, "", "", "")
call s:hi("PreProc", s:aimi_E, "", "NONE", "")
call s:hi("Repeat", s:aimi_E, "", "", "")
call s:hi("SpecialChar", s:aimi_9, "", "", "")
call s:hi("Statement", s:aimi_4, "", "NONE", "")
call s:hi("StorageClass", s:aimi_D, "", "", "")
call s:hi("Structure", s:aimi_D, "", "", "")
call s:hi("Tag", s:aimi_9, "", "", "")
call s:hi("Constant", s:aimi_9, "", "", "")
call s:hi("Special", s:aimi_9, "", "", "")

call s:hi("DiffAdd", s:aimi_0, s:aimi_B, "", "")
call s:hi("DiffChange", s:aimi_0, s:aimi_E, "", "")
call s:hi("DiffDelete", s:aimi_0, s:aimi_8, "", "")
call s:hi("DiffText", s:aimi_0, s:aimi_D, "", "")

" ### Plugins ###

" Ale
call s:hi("ALEErrorSign", s:aimi_8, "", "", "")
call s:hi("ALEWarningSign", s:aimi_C, "", "", "")

" GitGutter
call s:hi("GitGutterAdd", s:aimi_B, "", "", "")
call s:hi("GitGutterChange", s:aimi_C, "", "", "")
call s:hi("GitGutterChangeDelete", s:aimi_8, "", "", "")
call s:hi("GitGutterDelete", s:aimi_8, "", "", "")

" NERDTree
call s:hi("NERDTreeExecFile", s:aimi_4, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" vim-signature
call s:hi("SignatureMarkText", s:aimi_D, "", "", "")

" vim-startify
call s:hi("StartifyBracket", s:aimi_2, "", "", "")

" CoC
call s:hi("CocErrorSign", s:aimi_8, "", "", "")
call s:hi("CocWarningSign", s:aimi_C, "", "", "")
call s:hi("CocInfoSign", s:aimi_D, "", "", "")
call s:hi("CocHintSign", s:aimi_A, "", "", "")
call s:hi("CocErrorHighlight", s:aimi_8, "", "undercurl", "")
call s:hi("CocWarningHighlight", s:aimi_C, "", "undercurl", "")
