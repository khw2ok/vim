let g:airline#themes#khw2#palette = {}

let s:guibg = '#000000'
let s:termbg = 232
let s:termsep = 236
let s:guisep = '#000000'

let s:N1 = [ '#eeeeee' , s:guibg , 45  , s:termbg ]
let s:N2 = [ '#ff0000' , s:guibg , 202 , s:termbg ]
let s:N3 = [ '#8a8a8a' , s:guibg , 7   , s:termbg ]

let g:airline#themes#khw2#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#khw2#palette.normal_modified = {
      \ 'airline_c': [ '#d70000' , s:guibg, 160     , s:termbg    , ''     ] ,
      \ }

let s:I1 = [ '#eeeeee' , s:guibg , 82  , s:termbg ]
let s:I2 = [ '#ff0000' , s:guibg , 202 , s:termbg ]
let s:I3 = [ '#8a8a8a' , s:guibg , 7   , s:termbg ]
let g:airline#themes#khw2#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#khw2#palette.insert_modified = copy(g:airline#themes#khw2#palette.normal_modified)
let g:airline#themes#khw2#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#af0000' , s:I1[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#khw2#palette.replace = {
      \ 'airline_a': [ s:I1[0]   , '#af0000' , s:I1[2] , 124     , ''     ] ,
      \ }
let g:airline#themes#khw2#palette.replace_modified = copy(g:airline#themes#khw2#palette.normal_modified)

let s:V1 = [ '#eeeeee' , s:guibg , 184 , s:termbg ]
let s:V2 = [ '#ff0000' , s:guibg , 202 , s:termbg ]
let s:V3 = [ '#8a8a8a' , s:guibg , 7   , s:termbg ]
let g:airline#themes#khw2#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#khw2#palette.visual_modified = copy(g:airline#themes#khw2#palette.normal_modified)

let s:IA  = [ '#585858' , s:guibg  , 239 , s:termbg  , '' ]
let s:IA2 = [ '#585858' , s:guisep , 239 , s:termsep , '' ]
let g:airline#themes#khw2#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA2, s:IA2)
let g:airline#themes#khw2#palette.inactive_modified = copy(g:airline#themes#khw2#palette.normal_modified)

