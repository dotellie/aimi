let g:airline#themes#aimi#palette = {}

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

let s:Right = [s:aimi_4, s:aimi_1, 0, 0]
let s:Middle = [s:aimi_4, s:aimi_0, 0, 0]
let s:NWarn = [s:aimi_0, s:aimi_E, 0, 0]
let s:NError = [s:aimi_0, s:aimi_8, 0, 0]

let s:NMain = [s:aimi_0, s:aimi_D, 0, 0]
let g:airline#themes#aimi#palette.normal = airline#themes#generate_color_map(s:NMain, s:Right, s:Middle)
let g:airline#themes#aimi#palette.normal.airline_warning = s:NWarn
let g:airline#themes#aimi#palette.normal.airline_error = s:NError

let s:NMMiddle = [s:aimi_B, s:aimi_0, 0, 0]
let g:airline#themes#aimi#palette.normal_modified = { 'airline_c': s:NMMiddle }
let g:airline#themes#aimi#palette.normal_modified.airline_warning = s:NWarn
let g:airline#themes#aimi#palette.normal_modified.airline_error = s:NError

let s:IMain = [s:aimi_0, s:aimi_B, 0, 0]
let g:airline#themes#aimi#palette.insert = airline#themes#generate_color_map(s:IMain, s:Right, s:Middle)
let g:airline#themes#aimi#palette.insert.airline_warning = s:NWarn
let g:airline#themes#aimi#palette.insert.airline_error = s:NError

let s:RMain = [s:aimi_0, s:aimi_E, 0, 0]
let g:airline#themes#aimi#palette.replace = airline#themes#generate_color_map(s:RMain, s:Right, s:Middle)
let g:airline#themes#aimi#palette.replace.airline_warning = s:NWarn
let g:airline#themes#aimi#palette.replace.airline_error = s:NError

let s:VMain = [s:aimi_0, s:aimi_A, 0, 0]
let g:airline#themes#aimi#palette.visual = airline#themes#generate_color_map(s:VMain, s:Right, s:Middle)
let g:airline#themes#aimi#palette.visual.airline_warning = s:NWarn
let g:airline#themes#aimi#palette.visual.airline_error = s:NError

let s:IAMain = [s:aimi_0, s:aimi_2, 0, 0]
let s:IARight = [s:aimi_0, s:aimi_2, 0, 0]
let s:IAMiddle = [s:aimi_0, s:aimi_2, 0, 0]
let s:IAWarn = [s:aimi_0, s:aimi_2, 0, 0]
let s:IAError = [s:aimi_0, s:aimi_2, 0, 0]
let g:airline#themes#aimi#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
let g:airline#themes#aimi#palette.inactive.airline_warning = s:IAWarn
let g:airline#themes#aimi#palette.inactive.airline_error = s:IAError
