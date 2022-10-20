local overrides = require "custom.plugins.overrides"

return {

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugin_confs.lspconfig"
    end,
  },

  ["kyazdani42/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("custom.plugin_confs.null-ls").setup()
      end,
   },

   ["tpope/vim-fugitive"] = {
      event = "BufRead",
   },

   ["kevinhwang91/nvim-bqf"] = {
      event = "BufRead",
      config = function()
         local bqf = require "bqf"
         bqf.setup {
            auto_enable = true,
            preview = {
               win_height = 12,
               win_vheight = 12,
               delay_syntax = 80,
               border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
            },
            func_map = {
               vsplit = "",
               ptogglemode = "z,",
               stoggleup = "",
            },
         }
      end,
   },

   ["junegunn/gv.vim"] = {
      event = "BufRead",
   },

   ["mg979/vim-visual-multi"] = {
      event = "BufRead",
   },

   ["troydm/zoomwintab.vim"] = {
      event = "BufRead",
   },

   ["tpope/vim-unimpaired"] = {
      event = "BufRead",
   },

   ["tpope/vim-surround"] = {
      event = "BufRead",
   },

   ["tpope/vim-repeat"] = {
      event = "BufRead",
   },

   ["mfukar/robotframework-vim"] = {
      ft = "robot",
   },

   ["mMontu/vim-RobotUtils"] = {
      ft = "robot",
   },

   -- ["glacambre/firenvim"] = {
   --   run = function()
   --     vim.fn['firenvim#install'](0)
   --   end
   -- },
}
