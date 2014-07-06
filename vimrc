" Key Mappings
" -------------------------------------
" Leader Key       : ,
" Local leader key : -
"
" General
" -------------------------------------
" <C-N>           : open new tab
" <C-O>           : open file in a tab
" <C-K>           : switch to previous tab
" <C-L>           : switch to next tab
" <leader><space> : stop highlighting of search results
" <leader>pm      : toggle paste mode
"
" Spell checking
" -------------------------------------
" <leader>s  : toggle spell checking
" <leader>se : switch to English dictionary
" <leader>sd : switch to German dictionary
" <leader>sa : set to German and English dictionary
" <leader>sn : move to next misspelled word
" <leader>sp : move to previous misspelled word
" <leader>ss : show possible options
" Note:
"	Spell files can be found here:
"	http://ftp.vim.org/vim/runtime/spell/
"	Download the targeted language file (*.spl) and put it in ~/.vim/spell
"
" NERDTreeTab
" -------------------------------------
" <C-E> : toggle NERDTreeTab
"
" Gundo
" -------------------------------------
" <leader>u : toggle undo tree view
"
" tComment
" -------------------------------------
" <leader>cl : (toggle) line comment
" <leader>cb : (toggle) block comment
"
" emmet
" -------------------------------------
" <leader>x, : expand snippet
"
" TaskList
" -------------------------------------
" <leader>tl : show task list
"
" Tabularize
" -------------------------------------
" <leader>t&  : tabularize &
" <leader>t=  : tabularize =
" <leader>t:  : tabularize :
" <leader>t:: : tabularize : right aligned
" <leader>t,  : tabularize ,
" <leader>t,, : tabularize , right aligned
" <leader>t;  : tabularize ;
" <leader>t;; : tabularize ; right aligned
" <leader>t"  : tabularize "
" <leader>t|  : tabularize |
"
" Easymotion
" -------------------------------------
" <leader>mw       : move to word
" <leader>mc<Char> : move to single character
" <leader>mt<Text> : move to text
" <leader>ml       : move to line
" <leader>mil      : move in line
" <leader>mn       : move to next result
" <leader>mp       : move to previous result
"
" Choosewin
" ------------------------------
" <leader>cw : choose window
"
" CtrlP
" ------------------------------
" <leader>p           : invoke ctrlp
" <Leader>pcc         : Clear all caches
" <C-F>, <C-B>        : cycle between modes
" <C-T>, <C-V>, <C-X> : open in a new tab or in a new split
" <C-Z>               : mark file
"
" StripWhiteSpaces
" -------------------------------
" <leader>sw : stip trailing white spaces
"
" Multiple-Cusors (press v after selection)
" -------------------------------
" <C-M> : start / select next marker
" <C-P> : previous marker
" <C-X> : skip marker
"
" Loremipsum
" -------------------------------
" <leader>lorem : generates text
"
" Snipmate
" -------------------------------
" expr<Tab> : expands the snippet beginning with the name "expr"
"
" Surround.vim
" -------------------------------
" cs<old><new>                         : change surroundings <old> -> <new> (cs"' on "Hello" -> 'Hello')
" ds<surrounding>                      : delete surrounding (ds" on "Hello" -> Hello)
" ys<text obj><surrounding>            : (you surround) wrap a <text obj> (ysiw" on Hello -> "Hello")
" yss<surrounding>                     : wrap the current sentence
" yS<text obj><surrounding>            : wrap <text obj> and place it on a new line
" ySs<surrounding> or ySS<surrounding> : wrap sentence and place it on a new line
" visual mode S<surrounding>           : wrap the selection
" Aliases for surroundings:
"	b          : )
"	B          : }
"	r          : ]
"	a          : >
"	t          : HTML or XML tag
"	w          : word
"	W          : WORD
"	s          : sentence
"	p          : paragraph
"	(, { and [ : (<space> ... <space>), {<space> ... <space>}, ...
"
" Ruby and Rails (only in ruby files)
" -------------------------------
" <localleader>er  : open route file
" <localleader>edb : open db file
" <localLeader>pc  : open CtrlP for app/controllers
" <localLeader>pm  : open CtrlP for app/models
" <localLeader>pv  : open CtrlP for app/views
"
" Latex (only in tex files)
" -------------------------------
" ü : substitute ü by {\"u}
" Ü : substitute Ü by {\"U}
" ü : substitute ä by {\"a}
" ü : substitute Ä by {\"A}
" ü : substitute ö by {\"o}
" ü : substitute Ö by {\"O}
" ß : substitute ß by {\ss}
"
" Calendar.vim
" -------------------------------
" <leader>c: show calendar
"
" TextObject
" -------------------------------
" aj, ij: braces of any kind
" ada, ida: date and time
" ae, ie: entire buffer
" ao, io: blocks of indentation whitespace
" ai, ii: block of similarly indented lines
" aI, iI: block of lines with the same indentation
" ar, ir: ruby block
" aq, iq: closest pairs of quotes of any type
" a,, i,: parameter
" al, il: current line
" aE, iE: erb block
" af, if: python function
" ac, ic, python class

set nocompatible              " be iMproved, required
filetype off

" Vundle {{{
"
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	Plugin 'gmarik/Vundle.vim'
	Plugin 'kana/vim-textobj-user'
	Plugin 'Julian/vim-textobj-brace'
	Plugin 'kana/vim-textobj-datetime'
	Plugin 'kana/vim-textobj-entire'
	Plugin 'glts/vim-textobj-indblock'
	Plugin 'kana/vim-textobj-indent'
	Plugin 'sgur/vim-textobj-parameter'
	Plugin 'kana/vim-textobj-line'
	Plugin 'whatyouhide/vim-textobj-erb'
	Plugin 'nelstrom/vim-textobj-rubyblock'
	Plugin 'beloglazov/vim-textobj-quotes'
	Plugin 'tpope/vim-repeat'
	Plugin 'gagoar/StripWhiteSpaces'
	Plugin 'sjl/gundo.vim'
	Plugin 'vim-scripts/loremipsum'
	Plugin 'bling/vim-airline'
	Plugin 'tpope/vim-fugitive'
	Plugin 'airblade/vim-gitgutter'
	Plugin 'mattn/emmet-vim'
	Plugin 'tpope/vim-rails'
	Plugin 'kchmck/vim-coffee-script'
	Plugin 'vim-ruby/vim-ruby'
	Plugin 'pangloss/vim-javascript'
	Plugin 'tpope/vim-haml'
	Plugin 'othree/html5.vim'
	Plugin 'groenewege/vim-less'
	Plugin 'mattn/webapi-vim'
	Plugin 'tpope/vim-bundler'
	Plugin 'tpope/vim-rake'
	Plugin 'Valloric/MatchTagAlways'
	Plugin 'leshill/vim-json'
	Plugin 'flazz/vim-colorschemes'
	Plugin 'jistr/vim-nerdtree-tabs'
	Plugin 'scrooloose/nerdtree'
	Plugin 'terryma/vim-multiple-cursors'
	Plugin 'godlygeek/tabular'
	Plugin 'kshenoy/vim-signature'
	Plugin 'vim-scripts/TaskList.vim'
	Plugin 'tpope/vim-surround'
	Plugin 'MarcWeber/vim-addon-mw-utils'
	Plugin 'tomtom/tlib_vim'
	Plugin 'garbas/vim-snipmate'
	Plugin 'honza/vim-snippets'
	Plugin 't9md/vim-choosewin'
	Plugin 'tmhedberg/matchit'
	Plugin 'Lokaltog/vim-easymotion'
	Plugin 'tomtom/tcomment_vim'
	Plugin 'kien/ctrlp.vim'
	Plugin 'scrooloose/syntastic'
	Plugin 'gerw/vim-latex-suite'
	Plugin 'itchyny/calendar.vim'

	call vundle#end()
	filetype plugin indent on
" }}}

" VIM {{{
"	General {{{
		augroup bavaga
			au!
		augroup END

		syntax on                                      " enable syntax highlighting
		autocmd BufWinEnter * silent! :%foldopen!      " start out files with all folds opened
		autocmd Syntax * normal zR                     " check this
		set autoindent                                 " enable auto-indent
		set mouse=a                                    " enable mouse
		set backspace=indent,eol,start                 " Backspace for dummies
		set linespace=0                                " No extra spaces between rows
		set number                                     " Line numbers on
		set numberwidth=6                              "
		set showcmd                                    " show commands in status line
		set showmatch                                  " Show matching brackets/parenthesis
		set incsearch                                  " Find as you type search
		set hlsearch                                   " Highlight search terms
		set winminheight=0                             " Windows can be 0 line high
		set ignorecase                                 " Case insensitive search
		set smartcase                                  " Case sensitive when uc present
		set wildmenu                                   " Show list instead of just completing
		set wildmode=list:longest,full                 " Command <Tab> completion, list matches, then longest common part, then all.
		set whichwrap=b,s,h,l,<,>,[,]                  " Backspace and cursor keys wrap too
		set scrolljump=5                               " Lines to scroll when cursor leaves screen
		set scrolloff=3                                " Minimum lines to keep above and below cursor
		set list                                       " show special characters
		set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
		set splitright                                 " Puts new vsplit windows to the right of the current
		set splitbelow                                 " Puts new split windows to the bottom of the current
		scriptencoding utf-8                           " set to utf-8
		set cursorline                                 " highlight current line
		set tabpagemax=50                              " show only 50 tabs
		set history=1000                               " set history
		set noswapfile                                 " disable swap files
		set nowritebackup                              " no backup
		set nobackup                                   " no backup
		set hidden                                     " switch buffers without saving
		set shiftwidth=4                               " Use indents of 4 spaces
		set tabstop=4                                  " An indentation every four columns
		set softtabstop=4                              " Let backpace delete indent
		set noexpandtab                                " do not expand tabs
		set novisualbell                               " No blinking
		set noerrorbells                               " No noise.
		set laststatus=2                               " Always show status line.
		set vb t_vb=                                   " disable any beeps or flashes on error
		set ruler                                      " Show ruler
		set t_Co=256                                   " enforce 256 colors
		set wildignore+=*/tmp/*,*.so,*.swp,*.zip       " MacOSX/Linux
		set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe    " Windows
		if has('clipboard')
			if has('unnamedplus')                      " When possible use + register for copy-paste
				set clipboard=unnamedplus
			else                                       " On mac and Windows, use * register for copy-paste
				set clipboard=unnamed
			endif
		endif
	" }}}

	" UI {
		try
			colorscheme jellybeans
			hi SpecialKey ctermbg=233                   " set background of special keys (tabs)
		catch
		endtry
		set colorcolumn=81                          " display a line at the edge of the set textwidth
		highlight ColorColumn ctermbg=234 guibg=234 " set color of the line at the edge
	" }}}

	" General key mapping {{{
		let mapleader=','                           " set global leader
		let maplocalleader='-'                      " set local leader

		nnoremap <C-N> :tabnew<CR>
		nnoremap <C-O> :tabe<Space>
		nnoremap <C-K> :tabprev<CR>
		nnoremap <C-L> :tabnext<CR>
		nnoremap <leader><space> :nohlsearch<CR>
		nnoremap <leader>pm :set paste!<cr>
	" }}}

	" Spell checking {{{
		set spelllang=de,en
		nnoremap <leader>s :set spell!<cr>
		nnoremap <leader>se :set spelllang=en<cr>
		nnoremap <leader>sd :set spelllang=de<cr>
		nnoremap <leader>sa :set spelllang=de,en<cr>
		nnoremap <leader>sn ]s
		nnoremap <leader>sp [s
		nnoremap <leader>ss z=
	" }}}
" }}}

" Plugin airline {{{
	let g:airline_theme = 'base16'           " set color style
	set statusline=%<%f\                     " Filename
	set statusline+=%w%h%m%r                 " Options
	"if isdirectory(expand("~/.vim/bundle/vim-fugitive/"))
	if exists("*fugitive#statusline()")
		set statusline+=%{fugitive#statusline()} " Git Hotness
	endif
	set statusline+=\ [%{&ff}/%Y]            " Filetype
	set statusline+=\ [%{getcwd()}]          " Current dir
	set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
" }}}

" Plugin NERDTree {{{
	map <C-E> :NERDTreeTabsToggle <CR>
	let g:NERDTreeDirArrows=0             " remove fancy arrows
	let NERDTreeMapOpenInTab='<ENTER>'    " key to open a file in a tab
	let g:nerdtree_tabs_open_on_new_tab=1 " open files in a tab
	let NERDTreeQuitOnOpen=0
" }}}

" Plugin gitgutter {{{
	let g:gitgutter_sign_column_always=1 " show always the sign column
	let g:gitgutter_map_keys = 0         " disable default gitgutter key mappings
" }}}

" Plugin gundo {{{
	nnoremap <leader>u :GundoToggle<CR>
" }}}

" Plugin snipmate {{{
	let g:snips_author = 'Wilhelm Haas <wilhelm.haas@bavaga.com>'
" }}}

" Plugin tComment {{{
	let g:tcommentMaps=0 " disable default key mappings

	noremap <leader>cl :TComment<CR>
	noremap <leader>cb :TCommentBlock<CR>
" }}}

" Plugin emmet {{{
	let g:user_emmet_leader_key='<leader>x'               " set emmet leader key
	let g:user_emmet_install_global = 0                   " disable automatic emmet installation

	augroup bavaga
		autocmd FileType html,haml,eruby,css EmmetInstall " enable emmet only for specific files
	augroup END
" }}}

" Plugin tasklist {{{
	nnoremap <leader>tl :TaskList<cr>
" }}}

" Plugin Tabularize {{{
	nnoremap <leader>t& :Tabularize /&<CR>
	vnoremap <leader>t& :Tabularize /&<CR>
	nnoremap <leader>t= :Tabularize /=<CR>
	vnoremap <leader>t= :Tabularize /=<CR>
	nnoremap <leader>t: :Tabularize /:<CR>
	vnoremap <leader>t: :Tabularize /:<CR>
	nnoremap <leader>t:: :Tabularize /:\zs<CR>
	vnoremap <leader>t:: :Tabularize /:\zs<CR>
	nnoremap <leader>t, :Tabularize /,<CR>
	vnoremap <leader>t, :Tabularize /,<CR>
	nnoremap <leader>t,, :Tabularize /,\zs<CR>
	vnoremap <leader>t,, :Tabularize /,\zs<CR>
	nnoremap <leader>t; :Tabularize /;<CR>
	vnoremap <leader>t; :Tabularize /;<CR>
	nnoremap <leader>t;; :Tabularize /;;\zs<CR>
	vnoremap <leader>t;; :Tabularize /;;\zs<CR>
	nnoremap <leader>t" :Tabularize /"<CR>
	vnoremap <leader>t" :Tabularize /"<CR>
	nnoremap <leader>t<Bar> :Tabularize /<Bar><CR>
	vnoremap <leader>t<Bar> :Tabularize /<Bar><CR>
" }}}

" Plugin easymotion {{{
	let g:EasyMotion_do_mapping = 0
	nmap <leader>mw <Plug>(easymotion-bd-w)
	nmap <leader>mc <Plug>(easymotion-s)
	nmap <leader>mt <Plug>(easymotion-sn)
	nmap <leader>mil <Plug>(easymotion-lineanywhere)
	nmap <leader>ml <Plug>(easymotion-bd-jk)
	nmap <leader>mn <Plug>(easymotion-next)
	nmap <leader>mp <Plug>(easymotion-prev)
" }}}

" Plugin choosewin {{{
	nmap  <leader>cw  <Plug>(choosewin)
	let g:choosewin_overlay_enable = 1               " show big letters
	" overlay font broke on mutibyte buffer?
	" let g:choosewin_overlay_clear_multibyte = 1
" }}}

" Plugin CtrlP {{{
	let g:ctrlp_map = '<leader>p'        " set ctrlp key
	let g:ctrlp_cmd = 'CtrlP'            " command to execute when ctrlp key was pressed
	let g:ctrlp_working_path_mode = 'ra' " search working directory

	noremap <leader>pcc :CtrlPClearAllCaches<cr>
	noremap <leader>pp :CtrlP<space>
	noremap <leader>p. :CtrlP .<cr>

	" ctrlp custom ignore
	let g:ctrlp_custom_ignore = {
	\ 'dir':  '\.git$\|\.hg$\|\.svn$',
	\ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
" }}}

" Plugin vim-latex-suite {{{
	let g:tex_flavor='latex'

	augroup bavaga
		autocmd FileType tex inoremap ü {\"u}
		autocmd FileType tex inoremap Ü {\"U}
		autocmd FileType tex inoremap ä {\"a}
		autocmd FileType tex inoremap Ä {\"A}
		autocmd FileType tex inoremap ö {\"o}
		autocmd FileType tex inoremap Ö {\"O}
		autocmd FileType tex inoremap ß {\ss}
	augroup END
" }}}

" Plugin StripWhiteSpaces {{{
	nnoremap <leader>sw :StripWhiteSpaces<cr>
" }}}

" Plugin vim-multiple-cursors {{{
	let g:multi_cursor_next_key='<C-M>'
" }}}

" Plugin Calendar {{{
	let g:calendar_google_calendar = 1 " show google calendar
	let g:calendar_google_task = 1     " show google tasks

	nnoremap <leader>c :Calendar<cr>
" }}}

" Plugin Loremipsum {{{
	nnoremap <leader>lorem :Loremipsum<cr>
" }}}

" Ruby and Rails {{{
	augroup bavaga
		" expand tabs in ruby, yaml and rails files
		autocmd FileType yaml,ruby setlocal expandtab shiftwidth=2 softtabstop=2 tabstop=2
		autocmd Filetype ruby nnoremap <localleader>pc :CtrlP app/controllers<CR>
		autocmd Filetype ruby nnoremap <localleader>pv :CtrlP app/views<CR>
		autocmd Filetype ruby nnoremap <localleader>pm :CtrlP app/models<CR>
		autocmd Filetype ruby nnoremap <localleader>er :tabe config/routes.rb<CR>
		autocmd Filetype ruby nnoremap <localleader>edb :tabe config/database.yml<CR>
	augroup END
" }}}

" GIT {{{
	augroup bavaga
		" Instead of reverting the cursor to the last position in the buffer, we
		" set it to the first line when editing a git commit message
		au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
	augroup END
" }}}

" Markdown {{{
	augroup bavaga
		autocmd BufNewFile,BufReadPost *.md set filetype=markdown
		autocmd FileType markdown setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4
	augroup END
" }}}
