vim.api.nvim_command('let mapleader=" "')
vim.api.nvim_command('let @j=\'miojk0"iD`i\'')
vim.api.nvim_command('let @k=\'miOjk0"iD`i\'')

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<leader>k', '@k', opts)
vim.api.nvim_set_keymap('n', '<leader>j', '@j', opts)

vim.api.nvim_set_keymap('!', '<F9>', ':set relativenumber!<CR>', opts)

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', opts)
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', opts)
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', opts)
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', opts)
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', opts)
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', opts)

-- tabs
vim.api.nvim_set_keymap('n', '<A-1>', ':tabn 1<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-2>', ':tabn 2<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-3>', ':tabn 3<CR>', opts)
vim.api.nvim_set_keymap('n', '<A-4>', ':tabn 4<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>o', ':Ex<CR>', opts)
vim.api.nvim_set_keymap('n', 'Y', 'y$', opts)

-- next
vim.api.nvim_set_keymap('n', '<A-j>', ':bn<CR>', opts)
-- previous
vim.api.nvim_set_keymap('n', '<A-k>', ':bp<CR>', opts)
-- switching between next and previous
vim.api.nvim_set_keymap('n', '<A-p>', ':b#<CR>', opts)



-- leader key mappings
vim.api.nvim_set_keymap('n', '<leader>w', ':w!<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>j', '@j', opts)
vim.api.nvim_set_keymap('n', '<leader>k', '@k', opts)
vim.api.nvim_set_keymap('n', '<leader>qh', 'q:', opts)
vim.api.nvim_set_keymap('n', '<leader>bd', ':bd<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>br', ':reg<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>n', ':nohls<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>-', ':sp<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>]', ':vs<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>t-', ':sp<CR>:term<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>t]', ':vs<CR>:term<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>tt', ':term<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>e', ':e $MYVIMRC<CR>', opts)
-- nnoremap <leader>b oimport pdb; pdb.set_trace();<Esc>


vim.api.nvim_set_keymap('i', '{', '{}<Esc>i', opts)
vim.api.nvim_set_keymap('i', '[', '[]<Esc>i', opts)
-- exist out of terminal mode use jk
vim.api.nvim_set_keymap('t', 'jk', '<C-\\><C-n>', opts)


-- EasyAlign
vim.api.nvim_set_keymap('x', 'ga', ':EasyAlign<CR>', opts)
vim.api.nvim_set_keymap('n', 'ga', ':EasyAlign<CR>', opts)


-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ll', ":lua require'telescope.builtin'.buffers{}<CR>", opts)
vim.api.nvim_set_keymap('n', '<C-p>', ':lua require\'config-telescope\'.project_files{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>fa', ':lua require\'telescope.builtin\'.live_grep{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lr', ':lua require\'telescope.builtin\'.registers{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lc', ':lua require\'telescope.builtin\'.colorscheme{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lgs', ':lua require\'telescope.builtin\'.git_stash{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lgb', ':lua require\'telescope.builtin\'.git_branches{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lgc', ':lua require\'telescope.builtin\'.git_commits{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lgcc', ':lua require\'telescope.builtin\'.git_bcommits{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>p', ':lua require\'telescope.builtin\'.treesitter{}<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>pr', ':lua require\'telescope.builtin\'.lsp_references{}<CR>', opts)

-- Fugitive
vim.api.nvim_set_keymap('n', '<leader>gs', ':G<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gss', ':Git stash<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gsp', ':Git stash pop<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gd', ':Gdiff<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gll', ':Git log --graph --all --decorate<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gbb', ':Git blame<CR>', { noremap = true, silent = true })

-- Hop
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require\'hop\'.hint_words{}<CR>', { noremap = true, silent = true })

-- Dap
vim.api.nvim_set_keymap('n', '<leader>db', ':lua require\'dap\'.toggle_breakpoint{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dc', ':lua require\'dap\'.continue{}<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', ':DapToggleRepl<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>de', ':lua require\'dap\'.terminate{}<CR>', { noremap = true, silent = true })


-- DapUI
vim.api.nvim_set_keymap('n', '<leader>du', ':lua require\'dapui\'.toggle()<CR>', { noremap = true, silent = true })

-- Formatter
vim.api.nvim_set_keymap('n', '<leader>fm', ':CocCommand prettier.forceFormatDocument<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ft', ':FormatWrite<CR>', { noremap = true, silent = true })

-- netrw
vim.api.nvim_create_autocmd('filetype', {
  pattern = 'netrw',
  desc = 'Better mappings for netrw',
  callback = function()
    local bind = function(lhs, rhs)
      vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
    end 

    -- edit new file
    bind('n', '%')

    -- rename file
    bind('r', 'R')
    bind('<C-L>', '<C-W><C-L>')
    bind('<C-H>', '<C-W><C-H>')
    bind('<C-J>', '<C-W><C-J>')
    bind('<C-K>', '<C-W><C-K>')
    bind('<C-v>', 'v')
  end
})

-- coc
vim.api.nvim_set_keymap('n', '<leader>q', ':CocDiagnostics<CR>', { noremap = true, silent = true })


