-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater
-- This file is for NvChad options & tools, custom settings are split between here and 'lua/custom/init.lua'

local M = {}

-- NOTE: To use this, make a copy with `cp example_chadrc.lua chadrc.lua`

--------------------------------------------------------------------

-- To use this file, copy the strucutre of `core/default_config.lua`,
-- examples of setting relative number & changing theme:

-- M.options = {
-- }

M.ui = {
   -- theme = "gruvchad",
   italic_comments = true,
}

M.plugins = require "custom.plugins"

-- -- NvChad included plugin options & overrides
-- M.plugins = {
--    user = require "custom.plugins",
--
-- --    status = {
-- --       esc_insertmode = false, -- map to <ESC> with no lag
-- --       telescope_media = true, -- media previews within telescope finders
-- --       truezen = true, -- distraction free & minimalist UI mode
-- --    },
--
--    options = {
--       lspconfig = {
--          --    path of file containing setups of different lsps
--          --    (ex : "custom.plugins.lspconfig"), read the docs for more info
--          setup_lspconf = "custom.plugin_confs.lspconfig",
--       },
--       nvimtree = {
--          enable_git = 1,
--       },
--    },
--
--    -- To change the Packer `config` of a plugin that comes with NvChad,
--    -- add a table entry below matching the plugin github name
--    --              '-' -> '_', remove any '.lua', '.nvim' extensions
--    -- this string will be called in a `require`
--    --              use "(custom.configs).my_func()" to call a function
--    --              use "custom.blankline" to call a file
--    default_plugin_config_replace = {},
-- }

M.mappings = require "custom.mappings"

return M
