setlocal shiftwidth=4
setlocal softtabstop=4
setlocal expandtab
setlocal textwidth=79

setlocal nu
setlocal list

"highlight lines that are too long
highlight Excess ctermbg=DarkGrey guibg=Black
match Excess /\%79v.*/
