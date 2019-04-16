let g:airline#themes#aimi#palette = {}

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

let s:Right = [s:aimi_0, s:aimi_3, 0, 0]
let s:Middle = [s:aimi_5, s:aimi_1, 0, 0]

let s:NMain = [s:aimi_D, s:aimi_3, 0, 0]
let g:airline#themes#aimi#palette.normal = airline#themes#generate_color_map(s:NMain, s:Right, s:Middle)

let s:NMMiddle = [s:aimi_9, s:aimi_1, 0, 0]
let g:airline#themes#aimi#palette.normal_modified = { 'airline_c': s:NMMiddle }

let s:IMain = [s:aimi_0, s:aimi_B, 0, 0]
let g:airline#themes#aimi#palette.insert = airline#themes#generate_color_map(s:IMain, s:Right, s:Middle)

let s:RMain = [s:aimi_0, s:aimi_9, 0, 0]
let g:airline#themes#aimi#palette.replace = airline#themes#generate_color_map(s:RMain, s:Right, s:Middle)

let s:VMain = [s:aimi_0, s:aimi_D, 0, 0]
let g:airline#themes#aimi#palette.visual = airline#themes#generate_color_map(s:VMain, s:Right, s:Middle)

let s:IAMain = [s:aimi_2, s:aimi_1, 0, 0]
let s:IARight = [s:aimi_2, s:aimi_1, 0, 0]
let s:IAMiddle = [s:aimi_2, s:aimi_1, 0, 0]
let g:airline#themes#aimi#palette.inactive = airline#themes#generate_color_map(s:IAMain, s:IARight, s:IAMiddle)
