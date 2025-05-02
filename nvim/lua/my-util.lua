-- custom utitilty
local M = {}

local oil = require('oil')
local telescope = require('telescope.builtin')

M.oil_path_or_default_grep = function()
  local  oil_current_dir = oil.get_current_dir()
  if oil_current_dir then
    telescope.live_grep{
      cwd = oil_current_dir
    }
  else
    telescope.live_grep{}
  end
end

return M
