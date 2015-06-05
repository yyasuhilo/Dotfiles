"===== NeoBundle Settings =====
set nocompatible
filetype off

if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" original reps on github
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite-outline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'thinca/vim-quickrun' 
NeoBundle 'thinca/vim-poslist' 
NeoBundle 'quickfixstatus.vim'
NeoBundle 'Zenburn'
NeoBundle 'newspaper.vim'
"Bundle 'ujihisa/unite-colorscheme'
"Bundle 'ujihisa/unite-font'
"Bundle 'jondistad/vimclojure'
" vim-scripts repos
"Bundle 'http://www.vim.org/script.php?script_id=152'
"Bundle 'buftabs'
" non github repos

call neobundle#end()

filetype indent plugin on


"== カラー設定
set t_Co=256
syntax enable
set background=dark
colorscheme molokai
"colorscheme solarized
let g:solarized_termcolors=256
let g:solarized_termtrans=1
hi clear CursorLine
"colorscheme molokai
"colorscheme zenburn
"colorscheme newspaper
"colorscheme desert

"===== Template
autocmd BufNewFile *.plt 0r	~/.vim/template/gnuplot.plt
autocmd BufNewFile *.tex 0r	~/.vim/template/tex.tex


"===== Key Mappings =====
nnoremap ,y :<C-u>Unite history/yank<CR>
nnoremap ,b :<C-u>Unite buffer<CR>
nnoremap ,outline :<C-u>Unite -no-quit -vertical -winwidth=30 outline<CR>
nnoremap ,ls :<C-u>UniteWithBufferDir -buffer-name=files file<CR> "Select a file to open in the directory of the current file.
nnoremap ,vs :<C-u>10sp<CR>:VimShell %:p:h<CR>
nnoremap ,rf :<C-u>Unite file_mru -buffer-name=file_mru<CR> "Select a file to open among recent files. 
nnoremap ,s :<C-u>sp<CR>:NeoComplCacheEditSnippets<CR>
nnoremap ,run :<C-u>update<BAR>QuickRun<CR>
nnoremap ,t :<C-u>tabnew<CR>
nnoremap <C-l> :<C-u>set lines=50<CR>:redraw<CR>
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <ESC>gja
inoremap <Up> <ESC>gka
noremap h <Left>
noremap l <Right>
noremap <C-a> <Home>
noremap! <C-a> <Home>
noremap <C-e> <End>
noremap! <C-e> <End>
noremap <C-p> <ESC>p
noremap! <C-p> <ESC>pa
"noremap ; :
"noremap : ;
noremap Y y$
vnoremap p "_dP
vnoremap P "_dP
noremap x "_x
noremap <C-x> "_x
noremap! <C-x> <DEL>
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v,'\/'),"\n",'\\n','g')<CR><CR>
nnoremap <CR> i<CR>
cnoremap <C-p> <C-r>"
"nnoremap <C-b> g; "前の編集場所へ移動
"nnoremap <C-f> g, "次の編集場所へ移動
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)
map <C-o> <Plug>(poslist-prev-pos)
map <C-i> <Plug>(poslist-next-pos)


"nmap <ESC><ESC> :nohlsearch<CR><ESC>
"imap {} {}<Left>
"imap [] []<Left>
"imap () ()<Left>
"imap "" ""<Left>
"imap '' ''<Left>
"imap <> <><Left>

"===== Basic Settings =====
set wildmenu
set showcmd
set ignorecase
set smartcase
set visualbell
set t_vb=
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200
set clipboard+=unnamed
set smarttab
set noshowmatch
let loaded_matchparen=1
set autoindent
set hlsearch "検索結果をハイライトする
set shiftwidth=4 "シフト移動幅
set tabstop=4 "タブ移動幅
set number "行数表示
set guifont=Monaco:h12 "gvimのフォント設定
set whichwrap=b,s,h,l,~,[,],<,>
set autoread
set undodir=~/.vimundo undofile
set mouse=a
set backspace=start,eol,indent
set laststatus=2
set incsearch
set smartindent
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P "ステータスラインに文字コードと改行文字を表示する
set statusline=%=\ [%{(&fenc!=''?&fenc:&enc)}/%{&ff}]\[%Y]\[%04l,%04v][%p%%]
"set spell "spellcheck on
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set showtabline=2 "タブを常に表示
set tw=0 "勝手に改行禁止"

"== カレントウィンドウのみに罫線をひく
"set cursorline
"augroup cch
"	autocmd! cch
"	autocmd WinLeave * set nocursorline
"	autocmd WinEnter,BufRead * set cursorline
"augroup END
"hi clear CursorLine
"hi CursorLine gui=underline
"highlight CursorLine ctermbg=black guibg=black


"== tex, bibtexの自動インデントを無効にする
autocmd FileType tex set indentexpr& 
autocmd FileType bibtex set indentexpr&

"== tex用の設定
"let g:tex_fold_enabled=1 "texのsectionを折りたたむ
let g:tex_comment_nospell=1 "comment部分をスペルチェックしない

"== vimclojureの設定
"let g:clj_highlight_builtins = 1
"let g:clj_paren_rainbow = 1


"== Normal modeの時にステータスラインの色を変える
"augroup InsertHook
"	autocmd!
"	autocmd InsertEnter * highlight StatusLine guifg=#ccdc90 guibg=#2E4340
""	autocmd InsertLeave * highlight StatusLine guifg=#2E4340 guibg=#ccdc90
"	autocmd InsertEnter * highlight StatusLine guifg=yellow guibg=blue
"	autocmd InsertLeave * highlight StatusLine guifg=darkblue guibg=darkyellow
"augroup END

let g:hi_insert = 'highlight StatusLine guifg=darkblue guibg=darkyellow gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif
" if has('unix') && !has('gui_running')
"   " ESCでキー入力待ちになる対策
"   inoremap <silent> <ESC> <ESC>
" endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
    redraw
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl	
endfunction


"== for macvim
if has('gui_macvim')
"	set transparency=0 "透明度指定
"	set guifont=Osaka-Mono:h16 "フォント指定
	set guioptions-=T "ツールバーの表示をなくす
"	set lines=50
"	set columns=180
"	nnoremap <C-Tab> gt
"	nnoremap <C-S-Tab> gT
endif

"== neocomplcache
let g:neocomplcache_enable_at_startup = 0 " 起動時に有効化
let g:neocomplcache_enable_quick_match = 0 " 記号で補完

"== unite
let g:unite_source_history_yank_enable = 1

"== quickrun
let g:quickrun_config={}

let g:quickrun_config['tex'] = {
			\ 'type' : 'tex',
			\ 'command' : 'eptex',
			\ 'outputter/buffer/split' : 'vertical rightbelow 40',
			\ 'exec' : ['cd %s:h; pwd; %c -kanji=utf8 -progname=platex -output-directory=%s:h %s; dvipdfmx -p a4 %s:r.dvi; open -a skim %s:r.pdf'],
			\ }

let g:quickrun_config['gnuplot'] = {
			\ 'type' : 'gnuplot',
			\ 'command' : 'gnuplot',
			\ 'outputter/buffer/split' : 'vertical rightbelow 40',
			\ 'exec' : ['cd %s:h; pwd; %c %s; sleep 1; cleaneps.sh `grep output %s | cut -d "''" -f 2 | head -n 1` __tmp-output.eps; mv __tmp-output.eps `grep output %s | cut -d "''" -f 2 | head -n 1`; epspdf `grep output %s | cut -d "''" -f 2 | head -n 1`; open -a Preview.app `grep output %s | cut -d "''" -f 2 | head -n 1 | sed -e "s/\.eps/.pdf/"`']
			\ }

"let g:quickrun_config['gnuplot'] = {
"			\ 'type' : 'gnuplot',
"			\ 'command' : 'gnuplot',
"			\ 'outputter/buffer/split' : 'vertical rightbelow 40',
"			\ 'exec' : ['cd %s:h; pwd; %c %s; sleep 1; cleaneps.sh `grep output %s | cut -d "''" -f 2 | head -n 1` __tmp-output.eps; mv __tmp-output.eps `grep output %s | cut -d "''" -f 2 | head -n 1`; echo /usr/local/bin/gv %s:h/`grep output %s | cut -d "''" -f 2 | head -n 1` > __tmp-open-gv.sh; chmod +x __tmp-open-gv.sh; open -a x11.app __tmp-open-gv.sh; sleep 1;rm -f  __tmp-open-gv.sh __tmp-output.eps']
"			\ }


"" :QuickRun -outputter my_outputter
"" プロセスの実行中は、buffer に出力し、
"" プロセスが終了したら、quickfix へ出力を行う
"" http://d.hatena.ne.jp/osyo-manga/20110729/1311934261
"" http://d.hatena.ne.jp/osyo-manga/20110921/1316605254
"
"" 既存の outputter をコピーして拡張
""let my_outputter = quickrun#outputter#multi#new()
"let my_outputter.config.targets = ["buffer", "quickfix"]
"
"function! my_outputter.init(session)
"" quickfix を閉じる
"    :cclose
"" 元の処理を呼び出す
"    call call(quickrun#outputter#multi#new().init, [a:session], self)
"endfunction
"
"function! my_outputter.finish(session)
"    call call(quickrun#outputter#multi#new().finish, [a:session], self)
"" 出力バッファの削除
"    bwipeout [quickrun
"" vim-hier を使用している場合は、ハイライトを更新
""    :HierUpdate
"" quickfix への出力後に quickfixstatus を有効に
"    :QuickfixStatusEnable
"endfunction
"
"" quickrun に outputter を登録
"call quickrun#register_outputter("my_outputter", my_outputter)
"
"" <leader>r を再定義
"nmap <leader>r :<C-u>QuickRun -outputter my_outputter<CR>

