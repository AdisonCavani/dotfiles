" codedark.vim override

hi Comment cterm=italic
set t_Co=256
set t_ut=

syntax on
colorscheme codedark


" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
