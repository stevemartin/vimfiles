syntax on
filetype plugin indent on
set nu
set tabpagemax=500
" backups and swapfiles
set nobackup
set noswapfile

" 2 spaces for tabs.
set autoindent
set smartindent
set softtabstop=2
set shiftwidth=2
set tabstop=4
set expandtab
set nosmarttab

" sensible backspace behaviour
set backspace=2

" use ack instead of grep
set grepprg=ack
set grepformat=%f:%l:%m

" ui
set ruler
set noshowcmd
set nolazyredraw
set number
set nostartofline
set cursorline
set showmatch
set virtualedit=block

" searching
set hlsearch
set incsearch

nmap <silent> <Leader>rcrr :call RunRubyCurrentFileConque()<CR>
nmap <silent> <Leader>rcss :call RunRspecCurrentFileConque()<CR>
nmap <silent> <Leader>rcll :call RunRspecCurrentLineConque()<CR>
nmap <silent> <Leader>rccc :call RunCucumberCurrentFileConque()<CR>
nmap <silent> <Leader>rccl :call RunCucumberCurrentLineConque()<CR>
nmap <silent> <Leader>rcRR :call RunRakeConque()<CR>
nmap <silent> <Leader>rcrl :call RunLastConqueCommand()<CR>

nmap <silent> <Leader>ct :ConqueTerm bash<CR>

nnoremap <silent> <C-s> :call RelatedSpecVOpen()<CR>
nnoremap <silent> ,<C-s> :call RelatedSpecOpen()<CR>

" Cmd-Shift-R for RSpec
nmap <silent> <D-R> :call RunRspecCurrentFileConque()<CR>
" Cmd-Shift-L for RSpec Current Line
nmap <silent> <D-L> :call RunRspecCurrentLineConque()<CR>
" ,Cmd-R for Last conque command
nmap <silent> ,<D-R> :call RunLastConqueCommand()<CR>

" fugitive settings
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2

set guifont=Menlo:h20
nmap <leader>gs :Gstatus<cr>
nmap <leader>gb :Gblame<cr>
nmap <leader>gd :Gdiff<cr>
nmap <leader>git :Git<cr>
nmap <leader>gpush :Git push<cr>
nmap <leader>gfpush :Git push -f<cr>

" Vimrc and command stuff
nnoremap <silent> <Leader>ev :e ~/.vim/vimrc<CR>
nnoremap <silent> <Leader>sv :so ~/.vimrc<CR>
nnoremap <silent> <Leader>uc :e ~/.vim/useful_commands.markdown<CR>
nnoremap <silent> <Leader>cavs :e ~/.vim/fc_caveats.markdown<CR>

ab pry binding.pry

:inoremap jk <esc>
:inoremap <esc> <nop>

" Whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Rspec folding
function! s:FoldItBlock()
  let start = search('^\s*\(it\|specify\|scenario\|before\).*do\s*$', 'We')
  let end   = search('end', 'We')
  let cmd = (start+1).','.(end).'fold'
  if (start > 0) && (start < end)
    execute cmd
    return 1
  else
    return 0
  endif
endfunction

function! FoldAllItBlocks()
  let position = line('.')
  exe cursor(1,1)
  let result = 1

  while result == 1
    let result = s:FoldItBlock()
  endwhile

  call cursor(position, 1)
endfunction

nmap f1 :call FoldAllItBlocks()<CR>
nmap f0 :execute "normal zE"<CR>

