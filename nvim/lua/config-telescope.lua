-- require('telescope').setup(){
--     defaults = {
--         ['<leader>ll'] = ':Telescope<CR>'
--     }
-- }
local M = {}
M.project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files({show_untracked=true}), opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

-- require('telescope').load_extension('fzf')
return M
