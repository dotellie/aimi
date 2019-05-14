hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "aimi"

if &background ==# "dark"
    let s:aimi_0 = "{{dark.neutral.0}}"
    let s:aimi_1 = "{{dark.neutral.1}}"
    let s:aimi_2 = "{{dark.neutral.2}}"
    let s:aimi_3 = "{{dark.neutral.3}}"
    let s:aimi_4 = "{{dark.neutral.4}}"
    let s:aimi_5 = "{{dark.neutral.5}}"
    let s:aimi_6 = "{{dark.neutral.6}}"
    let s:aimi_7 = "{{dark.neutral.7}}"

    let s:aimi_8 = "{{dark.spectrum.8}}"
    let s:aimi_9 = "{{dark.spectrum.9}}"
    let s:aimi_A = "{{dark.spectrum.A}}"
    let s:aimi_B = "{{dark.spectrum.B}}"
    let s:aimi_C = "{{dark.spectrum.C}}"
    let s:aimi_D = "{{dark.spectrum.D}}"
    let s:aimi_E = "{{dark.spectrum.E}}"
    let s:aimi_F = "{{dark.spectrum.F}}"
else
    let s:aimi_0 = "{{light.neutral.0}}"
    let s:aimi_1 = "{{light.neutral.1}}"
    let s:aimi_2 = "{{light.neutral.2}}"
    let s:aimi_3 = "{{light.neutral.3}}"
    let s:aimi_4 = "{{light.neutral.4}}"
    let s:aimi_5 = "{{light.neutral.5}}"
    let s:aimi_6 = "{{light.neutral.6}}"
    let s:aimi_7 = "{{light.neutral.7}}"

    let s:aimi_8 = "{{light.spectrum.8}}"
    let s:aimi_9 = "{{light.spectrum.9}}"
    let s:aimi_A = "{{light.spectrum.A}}"
    let s:aimi_B = "{{light.spectrum.B}}"
    let s:aimi_C = "{{light.spectrum.C}}"
    let s:aimi_D = "{{light.spectrum.D}}"
    let s:aimi_E = "{{light.spectrum.E}}"
    let s:aimi_F = "{{light.spectrum.F}}"
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
call s:hi("Pmenu", s:aimi_5, s:aimi_2, "", "")
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
