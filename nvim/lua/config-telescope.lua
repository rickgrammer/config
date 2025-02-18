-- require('telescope').setup(){
--     defaults = {
--         ['<leader>ll'] = ':Telescope<CR>'
--     }
-- }
local M = {}
-- M.project_files = function()
--   local opts = {show_untracked = true} -- define here if you want to define something
--   local ok = pcall(require"telescope.builtin".git_files, opts)
--   if not ok then require"telescope.builtin".find_files(opts) end
-- end

-- M.project_files = function()
--     local _, ret, _ = require'telescope.utils'.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
--     if ret == 0 then
--         require'telescope.builtin'.git_files()
--     else
--         require'telescope.builtin'.find_files()
--     end
--   end

-- require('telescope').load_extension('fzf')
return M
