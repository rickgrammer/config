-- require('telescope').setup(){
--     defaults = {
--         ['<leader>ll'] = ':Telescope<CR>'
--     }
-- }
local M = {}
M.project_files = function()
  local opts = {} -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

local fb_actions = require "telescope".extensions.file_browser.actions
require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          ["<C-a>"] = fb_actions.create,
          ["<C-r>"] = fb_actions.rename,
          ["<C-m>"] = fb_actions.move,
          ["<C-y>"] = fb_actions.copy,
          ["<C-d>"] = fb_actions.remove,
          ["<C-s>"] = fb_actions.toggle_hidden,
          ["-"] = fb_actions.goto_parent_dir,
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
}
require("telescope").load_extension "file_browser"
-- require('telescope').load_extension('fzf')
return M
