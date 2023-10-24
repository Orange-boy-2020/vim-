set nocompatible
filetype off
set number
set guioptions-=r 
set guioptions-=L
set guioptions-=b    
syntax on   
let g:solarized_termcolors=256  
set background=dark     
set nowrap 
set fileformat=unix 
set cindent     
set tabstop=4   
set shiftwidth=4        
set showmatch   
set scrolloff=5     
set laststatus=2  
set fenc=utf-8      
set backspace=2
set mouse=a     
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      
set incsearch
set hlsearch        
set noexpandtab     
set whichwrap+=<,>,h,l
set autoread  
set completeopt=menu,menuone
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'file:///home/loyal/.vim/bundle/YouCompleteMe'

Plugin 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>    

Plugin 'scrooloose/nerdtree'
autocmd vimenter * NERDTree   
map <F3> :NERDTreeMirror<CR>   
map <F3> :NERDTreeToggle<CR>

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme="bubblegum"

Plugin 'kien/ctrlp.vim'
let g:airline_cmd = 'CtrlP'       

Plugin 'tomasr/molokai'
colorscheme molokai    


Plugin 'vim-scripts/taglist.vim'
let Tlist_Exit_OnlyWindow=1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'         
let Tlist_Show_One_File = 1                   
let Tlist_Auto_Update=1
let Tlist_Display_Tag_Scope=1
let Tlist_Use_Right_Window=1
map <silent> <F9> :TlistToggle<CR>            
autocmd vimenter *.c,*.cc,*.h,*.hpp,*.cpp :TlistOpen | wincmd p


Plugin 'jiangmiao/auto-pairs'

Plugin 'ludovicchabant/vim-gutentags' 
map <c-]> g<c-]> 
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_modules = []
if executable('ctags')
        let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
        let g:gutentags_modules += ['gtags_cscope']
endif
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_ctags_extra_args = ['--fields=+niazS']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
let g:gutentags_auto_add_gtags_cscope = 0


call vundle#end()
filetype plugin indent on


let g:ycm_collect_identifiers_from_tags_files = 1           
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
let g:ycm_seed_identifiers_with_syntax = 1                  
let g:ycm_complete_in_comments = 1						    
let g:ycm_confirm_extra_conf = 0						    
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_complete_in_comments = 1                         
let g:ycm_complete_in_strings = 1                           
let g:ycm_collect_identifiers_from_comments_and_strings = 1 
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'		
let g:ycm_show_diagnostics_ui = 0                           
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>" |            
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|     
let g:ycm_min_num_of_chars_for_completion=2                
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_key_invoke_completion = '<c-z>'			
noremap <c-z> <NOP>
let g:ycm_semantic_triggers = {
                                                \'c, cpp':['re!\w{2}'],
                                                \}
let g:ycm_filetype_whitelist = {										
                                                \"c":1,
                                                \"cpp":1,
                                                \}

