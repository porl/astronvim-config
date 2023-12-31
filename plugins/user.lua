return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      -- configuration options...
      color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
    },
  },
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      -- include the default astronvim config that calls the setup call
      require "plugins.configs.luasnip"(plugin, opts)
      -- load snippets paths
      require("luasnip.loaders.from_vscode").lazy_load {
        -- this can be used if your configuration lives in ~/.config/nvim
        -- if your configuration lives in ~/.config/astronvim, the full path
        -- must be specified in the next line
        paths = { "./lua/user/snippets" }
      }
    end,
  },
  {
    "rrethy/vim-hexokinase",
    lazy = false,
    config = function()
        --        vim.cmd [[ make hexokinase ]]
        vim.g.Hexokinase_optInPatterns = "full_hex,triple_hex,rgb,rgba,hsl,hsla"
        vim.cmd [[ HexokinaseTurnOn ]]
    end,
  },
}
