vim.api.nvim_command('set clipboard=unnamedplus')

vim.api.nvim_command('set number ')
vim.api.nvim_command('set relativenumber')
vim.api.nvim_command('set numberwidth=1')

vim.api.nvim_command('let g:netrw_liststyle=3')
vim.api.nvim_command('set hidden')
vim.api.nvim_command('set encoding=utf-8')

vim.api.nvim_command('set autoindent')

vim.api.nvim_command('set incsearch')

vim.api.nvim_command('set splitright')
vim.api.nvim_command('set splitbelow')

vim.api.nvim_command('set nofoldenable')
vim.api.nvim_command('set foldmethod=manual')

vim.api.nvim_command('set expandtab')
vim.api.nvim_command('set shiftwidth=4')
vim.api.nvim_command('set tabstop=4')


vim.api.nvim_command('set updatetime=800')
vim.api.nvim_command('set nobackup')
vim.api.nvim_command('set nowritebackup')
vim.api.nvim_command('set cmdheight=1')

-- store undos across sessions
if not os.rename('~/.nvim/undodir', '~/.nvim/undodir') then
    os.execute('mkdir ' .. '~/.nvim/undodir')
end
vim.api.nvim_command('set undofile')
vim.api.nvim_command('set undodir=~/.nvim/undodir')

vim.api.nvim_command('set noswapfile')
vim.api.nvim_command('set wrap')
vim.api.nvim_command('set nobackup')
vim.api.nvim_command('set scrolloff=8')

vim.api.nvim_command('set autoread')

vim.api.nvim_command('autocmd BufRead,BufNewFile *.vue,*.[tj]s*,*.mjs,*.css,*.prisma,*.lua,*.html,*.md set shiftwidth=2 | set tabstop=2')
vim.api.nvim_command('autocmd BufRead,BufNewFile *.yaml set cursorcolumn')

vim.api.nvim_command('set termguicolors')
vim.api.nvim_command('au ColorScheme * hi Normal ctermbg=none guibg=none | hi Visual guifg=#000000 guibg=#FFFFFF gui=none')
vim.g.nightflyTransparent = true
vim.api.nvim_command('colorscheme nightfly')
vim.api.nvim_command('set shortmess+=c')
vim.api.nvim_command('set signcolumn=auto')
vim.api.nvim_command('autocmd BufRead,BufNewFile *.txt set nowrap')
