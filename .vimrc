set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"set diffexpr=MyDiff()
"function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let eq = ''
  "if $VIMRUNTIME =~ ' '
    "if &sh =~ '\<cmd'
      "let cmd = '""' . $VIMRUNTIME . '\diff"'
      "let eq = '"'
    "else
      "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "endif
  "else
    "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

" gVim Window size
if has("gui_running")
    " height = twice than normal (24)
    " width = 3/2 than normal (80)
    set lines=48
    set columns=120
endif

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType="context"
" Disable preview scratch window
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" syntax highlighting
syntax on
colorscheme ron
"colorscheme koehler
"colorscheme Mustang

" font setting
"set gfn=NanumGothicCoding:h10:cANSI
"set gfn=Ubuntu_Mono:h10:cANSI
"set gfn=DejaVu_Sans_Mono:h8:cANSI
set gfn=Consolas:h9:cANSI

" indentation
set autoindent
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab        

" running a script being edited
map <buffer><F5> :w<CR>:!C:\Python27\python.exe %<CR>

map <buffer><F6> :%s/></>\r</g<CR>:0<CR>=:$<CR>

" I don't want to mess with backup files
set nobackup
set nowritebackup
set noundofile

" various
set noswf
set nu

filetype on
au BufNewFile,BufRead *.as set filetype=c

