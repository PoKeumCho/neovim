" curl -fLO $HOME/.config/nvim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set nocompatible " 오리지날 VI와 호환하지 않음
filetype off " Vundle 설정을 위한 시작 부분
 
" :PlugInstall 로 설치
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'tpope/vim-fugitive' 
Plug 'tpope/vim-unimpaired'
Plug 'preservim/nerdtree' 
Plug 'ctrlpvim/ctrlp.vim' " ctrl+p 키로 파일을 탐색할 수 있다. (ctrl+c to quit) 
Plug 'neoclide/coc.nvim', {'branch': 'release'} "~/.config/coc/extensions/node_modules
Plug 'KabbAmine/vCoolor.vim'
Plug 'udalov/kotlin-vim'
Plug 'MattesGroeger/vim-bookmarks'
call plug#end()
 
" -------------------------------------------------------------------
 
colorscheme gruvbox 
"colorscheme molokai
 
" ctrl+n 키를 NERDTreeFocus 단축키로 설정
map <silent> <C-n> :NERDTreeFocus<CR>  

" vCoolor 관련 내용
" <Alt-H> you can insert a HEX color anywhere
" (NORMAL mode map)
map <silent> <A-h> :VCoolor<CR>
" (INSERT mode map)
inoremap <silent> <A-h> <ESC>:VCoolor<CR>
"<Alt-R> you can insert a rgb color anywhere (NORMAL and INSERT modes).
"<Alt-V> you can insert a hsl color anywhere (NORMAL and INSERT modes).
"<Alt-W> you can insert a rgba color anywhere (NORMAL and INSERT modes).

" Prettier 관련 내용
" use ':Prettier' to format current buffer.
command! -nargs=0 Prettier :CocCommand prettier.formatFile    
" 특정 영역을 선택한 후 '\'키와 'f'키를 같이 누르면 작동한다.    
vmap <leader>f  <Plug>(coc-format-selected)    
nmap <leader>f  <Plug>(coc-format-selected)

" -------------------------------------------------------------------
 
set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2 " 2줄 범위에서부터 scroll
set wildmode=longest,list
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent " 줄의 끝, 시작, 들여쓰기에서 백스페이스를 사용하면 이전 줄과 연결됨
set history=256 " 편집한 256줄 까지 기억
set laststatus=2 " 상태바 표시 항상
"set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4 " Tab키를 눌렀을 때 4개 space로
set tabstop=4 " Tab을 4개 space로
set expandtab " 모든 Tab을 space로 설정
set incsearch " 단어 검색시 글자 입력할 때마다 검색
 
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
 
" 구문 강조 사용
if has("syntax")
 syntax on
endif

" -------------------------------------------------------------------

" swap file 저장 위치 지정
if !isdirectory(expand("$HOME/.config/nvim/swap"))
    call mkdir(expand("$HOME/.config/nvim/swap"), "p")
endif
set directory=$HOME/.config/nvim/swap

" Set up persistent undo across all files.
set undofile
if !isdirectory(expand("$HOME/.config/nvim/undodir"))
    call mkdir(expand("$HOME/.config/nvim/undodir"), "p")
endif
set undodir=$HOME/.config/nvim/undodir

" Fast split navigation with <Ctrl> + hjkl
" Normal mode map.
nmap <c-h> <c-w><c-h>
nmap <c-j> <c-w><c-j>
nmap <c-k> <c-w><c-k>
nmap <c-l> <c-w><c-l>
