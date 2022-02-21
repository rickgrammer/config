vim.api.nvim_command('let mapleader=" "')
vim.api.nvim_command('let @j=\'miojk0"iD`i\'')
vim.api.nvim_command('let @k=\'miOjk0"iD`i\'')

vim.api.nvim_set_keymap('n', '<leader>k', '@k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '@j', { noremap = true, silent = true })

vim.api.nvim_set_keymap('!', '<F9>', ':set relativenumber!<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { noremap = true, silent = true })

-- tabs
vim.api.nvim_set_keymap('n', '<A-1>', ':tabn 1<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-2>', ':tabn 2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-3>', ':tabn 3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-4>', ':tabn 4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>o', ':Ex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true, silent = true })

-- next
vim.api.nvim_set_keymap('n', '<A-j>', ':bn<CR>', { noremap = true, silent = true })
-- previous
vim.api.nvim_set_keymap('n', '<A-k>', ':bp<CR>', { noremap = true, silent = true })
-- switching between next and previous
vim.api.nvim_set_keymap('n', '<A-p>', ':b#<CR>', { noremap = true, silent = true })



-- leader key mappings
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', '@j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>k', '@k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>qh', 'q:', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>br', ':reg<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':nohls<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>-', ':sp<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>]', ':vs<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t-', ':sp<CR>:term<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>t]', ':vs<CR>:term<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>tt', ':term<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<leader>e', ':e $MYVIMRC<CR>', { noremap = true, silent = true})
-- nnoremap <leader>b oimport pdb; pdb.set_trace();<Esc>

vim.api.nvim_set_keymap('i', '{', '{}<Esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Esc>i', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '{', '{}<Esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '{', '{}<Esc>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '[', '[]<Esc>i', { noremap = true, silent = true })
-- exist out of terminal mode use jk
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })


-- EasyAlign
vim.api.nvim_set_keymap('x', 'ga', '<Plug>(EasyAlign)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'ga', '<Plug>(EasyAlign)', { noremap = true, silent = true })


-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ll', ":lua require'telescope.builtin'.buffers{}<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-p>', ':lua require\'config-telescope\'.project_files{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fa', ':lua require\'telescope.builtin\'.live_grep{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lr', ':lua require\'telescope.builtin\'.registers{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lc', ':lua require\'telescope.builtin\'.colorscheme{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lgs', ':lua require\'telescope.builtin\'.git_stash{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lgb', ':lua require\'telescope.builtin\'.git_branches{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lgc', ':lua require\'telescope.builtin\'.git_commits{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>lgcc', ':lua require\'telescope.builtin\'.git_bcommits{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>p', ':lua require\'telescope.builtin\'.treesitter{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>pr', ':lua require\'telescope.builtin\'.lsp_references{}<CR>', { noremap = true, silent = true })

-- Fugitive
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gss', ':Git stash<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gsp', ':Git stash pop<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gd', ':Gdiff<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gll', ':Git log --graph --all --decorate<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gbb', ':Git blame<CR>', { noremap = true, silent = true })

-- Hop
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require\'hop\'.hint_words{}<CR>', { noremap = true, silent = true })
