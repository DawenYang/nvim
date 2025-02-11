return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn", -- Go to Node, Start incremental selection
          node_incremental = "grn", -- Go to Related Node, Expand selection
          node_decremental = "grm", -- Go to Related Minimum, Shrink selection
          scope_incremental = "grc", -- Go to Related Context, Expand to scope
        },
      }
    end,
  },
  {
    -- Disable time clock dsiplayed on the right bottom corner.
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {},
      },
    },
  },
}
