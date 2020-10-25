set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'petobens/poet-v'
Plugin 'blueyed/jedi-vim'
Plugin 'itchyny/lightline.vim'
Plugin 'ervandew/supertab'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-python/python-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'cespare/vim-toml'
Plugin 'preservim/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'prettier/vim-prettier'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Set colors
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
colorscheme zen
set background=dark
let g:python_highlight_all = 1
syntax on

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Set global options
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set nocompatible          " don't care about vi
set hidden                " hide buffers instead of closing
set backspace=2           " allow backspacing over autoindent, line breaks and start of insert
set cmdheight=2           " expand command area to 3 lines

set number                " show line numbers
set ruler                 " show line number in status
set cursorline            " show cursor line
set nowrap                " don't wrap long lines
set sidescrolloff=15      " scroll horizontally to show 15 characters
set scrolloff=8           " always show 8 lines

set wildmenu              " list options for tab completion instead of cycling
set wildmode=list:longest

set autoindent            " copy indent from current line
set copyindent
set smartindent
set cinoptions+=J1        " better javascript indenting
set shiftround            " round indent to multiple of shiftwidth for < and >
set smarttab              " insert blanks according to shiftwidth, not tabstop
set tabstop=4             " display tabs as 4 spaces
set shiftwidth=4
set softtabstop=0
set expandtab             " insert spaces instead of tabs in insert mode

set ignorecase            " ignore case when searching
set smartcase             " ignore case if search pattern is all lowercase, case-sensitive otherwise

set incsearch             " starts searching while you type
set nohlsearch            " don't highlight searches
set nofoldenable          " no folding
set wrapscan              " wrap around when searching

set laststatus=2          " always show a status line, even with only 1 window

set history=1000          " history of : commands
set undolevels=1000       " use many muchos of undo

set report=0              " always report number of changed lines
set shortmess+=I          " no intro TODO: might also add "a" 
set showfulltag           " show matching tag
set showmatch             " when a bracket is inserted, briefly jump to the matching one
set tildeop               " tilde should behave as an operator
set viminfo+='50          " remember marks for 50 previous files

set title                 " set window title

set nobackup              " no backups
set noswapfile            " no swap files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set switchbuf=useopen     " when switching to a buffer that is already open in a window, switch to the window
set tags=tags;/           " search recursively upwards for tags file

set mouse=a               " make mouse work in tmux
set ttymouse=xterm2

if version >= 703
  set undofile
  set undodir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
endif

set statusline=%<\ %{fnamemodify(getcwd(),\":~\")}\>\ %f\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%m%r%y%=%c,%l/%L\ %P

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Set up grep
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set grepprg=ag

"set complete-=i

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Lets be smart about filetypes
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

filetype on
filetype plugin on
filetype indent on

if has('autocmd')
  autocmd filetype ruby setlocal sw=2 softtabstop=2
  autocmd BufReadPost quickfix setlocal nobuflisted " don't list quickfix window buffer
  autocmd BufNewFile,BufRead *.brs setf vb
  "autocmd BufWritePre *.rb :%s/\s\+$//e
endif

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Set shortcuts
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <silent> <leader>m :Howdy<CR>

" Grep current word
map gr :grep <cword> <CR>

"make Y consistent with C and D
nnoremap Y y$

"map gp to select pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" change cursor in insert mode
" ONLY WORKS in iTerm2!
"if exists('$ITERM_PROFILE')
    if exists('$TMUX')
        "let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        "let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
        let &t_SI = "\<Esc>[4 q"
        let &t_EI = "\<Esc>[2 q"
        "let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[4 q\<Esc>\\"
        "let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[2 q\<Esc>\\"
        "autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
    else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
"endif

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Plugin options
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
let MRU_Max_Entries = 100
let MRU_Use_Current_Window = 1 

" gitgutter colors
"highlight lineAdded    guifg=#009900 guibg=NONE ctermfg=2 ctermbg=0
"highlight lineModified guifg=#bbbb00 guibg=NONE ctermfg=3 ctermbg=0
"highlight lineRemoved  guifg=#ff2222 guibg=NONE ctermfg=1 ctermbg=0

" colorcolumn past 120 characters
"let &colorcolumn=join(range(121,999),",")

" Toggle Vexplore with Ctrl-E
"function! ToggleVExplorer()
  "if exists("t:expl_buf_num")
      "let expl_win_num = bufwinnr(t:expl_buf_num)
      "if expl_win_num != -1
          "let cur_win_nr = winnr()
          "exec expl_win_num . 'wincmd w'
          "close
          "exec cur_win_nr . 'wincmd w'
          "unlet t:expl_buf_num
      "else
          "unlet t:expl_buf_num
      "endif
  "else
      "exec '1wincmd w'
      "Vexplore
      "let t:expl_buf_num = bufnr("%")
  "endif
"endfunction
"map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1

" Change directory to the current buffer when opening files.
set autochdir

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·, 
"set list listchars=tab:>-,trail:~,extends:>,precedes:<

nmap <silent> <leader>t :NERDTreeToggle<CR>

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Run NERDTreeTabs on console vim startup.
" When set to 2, open only if directory was given as startup argument.
let g:nerdtree_tabs_open_on_console_startup = 2

" On startup, focus NERDTree if opening a directory, focus file if opening a 
" file.
let g:nerdtree_tabs_smart_startup_focus = 1

" Open NERDTree Tabs on new tab
let g:nerdtree_tabs_open_on_new_tab = 1

" Make sure that Focus is on the file window when switching into a tab
let g:nerdtree_tabs_focus_on_files = 1

" Automatically find and select currently opened file in NERDTree.
let g:nerdtree_tabs_autofind = 1

" Auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 0
" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Load in some other settings
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

source ~/.vim/key-map.vim
source ~/.vim/lightline.vim

"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Set paste/nopaste automatically when pasting
" https://coderwall.com/p/if9mda
"+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

" fugitive.git
" ========================================
" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> ,dg :diffget<CR>
nnoremap <silent> ,dp :diffput<CR>

" The tree buffer makes it easy to drill down through the directories of your
" git repository, but it’s not obvious how you could go up a level to the
" parent directory. Here’s a mapping of .. to the above command, but
" only for buffers containing a git blob or tree
autocmd User fugitive
  \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
  \   nnoremap <buffer> .. :edit %:h<CR> |
  \ endif

" Every time you open a git object using fugitive it creates a new buffer. 
" This means that your buffer listing can quickly become swamped with 
" fugitive buffers. This prevents this from becomming an issue:

autocmd BufReadPost fugitive://* set bufhidden=delete


nnoremap <leader>jj :%!python -m json.tool<CR>
set timeoutlen=1000

set ttimeoutlen=0

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

let g:ale_linters = {'python': ['pylint']}
let g:ale_virtualenv_dir_names = ['.venv', '.env', 'env', 've-py3', 've', 'virtualenv']

"let g:jedi#environment_paths = [$HOME . '/.pyenv/versions']
"let g:deoplete#enable_at_startup = 1

"nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
"nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Point YCM to the Pipenv created virtualenv, if possible
" At first, get the output of 'pipenv --venv' command.
"let pipenv_venv_path = system('pipenv --venv')
" The above system() call produces a non zero exit code whenever
" a proper virtual environment has not been found.
" So, second, we only point YCM to the virtual environment when
" the call to 'pipenv --venv' was successful.
" Remember, that 'pipenv --venv' only points to the root directory
" of the virtual environment, so we have to append a full path to
" the python executable.
"if shell_error == 0
  "let venv_path = substitute(pipenv_venv_path, '\n', '', '')
  "let g:ycm_python_binary_path = venv_path . '/bin/python'
"else
  "let g:ycm_python_binary_path = 'python'
"endif

"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1

"let g:virtualenv_auto_activate = 0

nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" Bind F5 to save file if modified and execute python script in a buffer.
nnoremap <silent> <leader>p :call SaveAndExecutePython()<CR>
vnoremap <silent> <leader>p :<C-u>call SaveAndExecutePython()<CR>

function! SaveAndExecutePython()
    " SOURCE [reusable window]: https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim

    " save and reload current file
    silent execute "update | edit"

    " get file path of current file
    let s:current_buffer_file_path = expand("%")

    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"

    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent execute 'botright new ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent execute 'botright new'
        silent execute s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
    endif

    silent execute "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    setlocal lines=15
    setlocal cursorline " make it easy to distinguish
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=""

    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _

    " add the console output
    silent execute ".!python3 " . shellescape(s:current_buffer_file_path, 1)

    " resize window to content length
    " Note: This is annoying because if you print a lot of lines then your code buffer is forced to a height of one line every time you run this function.
    "       However without this line the buffer starts off as a default size and if you resize the buffer then it keeps that custom size after repeated runs of this function.
    "       But if you close the output buffer then it returns to using the default size when its recreated
    "execute 'resize' . line('$')

    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable
endfunction

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"let g:poetv_auto_activate = 1

autocmd FileType python setlocal completeopt-=preview
let g:jedi#environment_paths = [$HOME . '/.pyenv/versions', '.']
