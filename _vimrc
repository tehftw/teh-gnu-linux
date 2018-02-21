" tehftw's .vimrc 
" Thu Feb 22 00:18:28 STD 2018


" Vundle config: has to be at the start
" {

filetype off " required by Vundle


        " set the runtime path to include Vundle and initialize
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
        "alternatively, pass a path where Vundle should install plugins
        "call vundle#begin('~/some/path/here')

        " let Vundle manage Vundle, required
        Plugin 'VundleVim/Vundle.vim'
            
        " The following are examples of different formats supported.
        " Keep Plugin commands between vundle#begin/end.
        " plugin on GitHub repo
        Plugin 'tpope/vim-fugitive'
        " plugin from http://vim-scripts.org/vim/scripts.html
        " Plugin 'L9'
        " Git plugin not hosted on GitHub
        Plugin 'git://git.wincent.com/command-t.git'
        " git repos on your local machine (i.e. when working on your own plugin)
        " Plugin 'file:///home/gmarik/path/to/plugin'
        
        " The sparkup vim script is in a subdirectory of this repo called vim.
        " Pass the path to set the runtimepath properly.
        Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
        " Install L9 and avoid a Naming conflict if you've already installed a
        " different version somewhere else.
        " Plugin 'ascenator/L9', {'name': 'newL9'}
        
        " scrooloose/NerdTree
        Plugin 'scrooloose/nerdTree'

        " gruvbox coloscheme:
        Plugin 'morhetz/gruvbox'

        " RUST
        " Vundle plugin: Rust.vim
        Plugin 'rust-lang/rust.vim'        " All of your Plugins must be added before the following line

        " plugin: simply cargo bindings
        Plugin 'timonv/vim-cargo'

        

        call vundle#end()            " required
        filetype plugin indent on    " required
        " To ignore plugin indent changes, instead use:
        "filetype plugin on
        "
        " Brief help
        " :PluginList       - lists configured plugins
        " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
        " :PluginSearch foo - searches for foo; append `!` to refresh local cache
        " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
        "
        " see :h vundle for more details or wiki for FAQ
        " Put your non-Plugin stuff after this line
" }


" Startup {
    set clipboard=exclude:.* " disables Xserver clipboard, for faster startup
    "because otherwise my ViM takes a whole second to start up xD
    
" }


" Environment {
	" Basics {
        set term=$TERM   " make arrow and other keys work
        set mouse=a      " enable mouse in all modes
        set wildmenu     " nice menu with suggestions for command arguments
    " }
" }


" General {
	syntax on " syntax highlighting
    filetype on " use the type of file
    set ruler " show linecount always
    set hlsearch " highlights after searching
    set title " display titre of file
    set ignorecase " case insesitive search by default
    " set cursorline " I think it shows the line cursor is on
" }



" RemapKeys {
    " remap colon and semicolon for easier use
    " nnoremap: Normal
    nnoremap ; :
   

    " arrow keys to move cursor and screen
    " noremap: Normal, Visual, Select, Operator-pending
    " NOTE: not stable - mostly when pressing <Down>, 
    " it tends to be very jumpy and move the cursor all around
    noremap <Down> <C-e>j   
    noremap <Up> <C-y>k
  

    " makes dot "." work with visually selected lines by default
    " only in visual mode
    xnoremap . :norm.<CR> 

" }


" TabKey, formatting {
	set autoindent " indent same level as last line
	set tabstop=8 " tabs are 8 spaces
	set softtabstop=4 " lets backspace delete indent	
    set shiftwidth=4 " displays tab as 4 spaces
	set expandtab " tabs are spaces
    " As suggested by /r/vim wiki, I changed tabstop back to the default 8
    
" }






" NERDTree {
    " automatically open NerdTree
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " open NerdTree when opening a directory with ViM
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

    " show hidden(dot files) by default
    let NERDTreeShowHidden=1

    " Hotkey: Ctrl+N for NerdTre
    map <C-n> :NERDTreeToggle<CR>

" }





