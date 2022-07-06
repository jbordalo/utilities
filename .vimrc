set number
syntax on
set tabstop=4
set autoindent
command Compile w | ! clear ; gcc -o out %:t -O3 ; ./out
