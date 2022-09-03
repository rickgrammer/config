require('neorg').setup {
  load = {
      ["core.defaults"] = {},
      ["core.norg.dirman"] = {
          config = {
              workspaces = {
                  work = "~/work/neorg/",
              }
          }
      },
      -- ["core.gtd.base"] = {
      --    config = { -- Note that this table is optional and doesn't need to be provided
      --      workspace = 'work'
      --    }
      -- },
  },
}
