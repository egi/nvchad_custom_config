local attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- lspservers with default config

-- filetypes = { "html", "json", "markdown", "scss", "css", "javascript", "javascriptreact" },
local servers = { "html", "cssls", "pyright", "solargraph", "bashls", "ansiblels", "robotframework_ls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = attach,
    capabilities = capabilities,
    -- root_dir = vim.loop.cwd,
    flags = {
      debounce_text_changes = 150,
    },
  }
end

-- lspconfig["sqlls"].setup {
--    cmd = {
--       "sql-language-server",
--       "up",
--       "--method",
--       "stdio",
--    },
--    on_attach = attach,
--    capabilities = capabilities,
--    flags = {
--       debounce_text_changes = 150,
--    },
-- }

lspconfig["groovyls"].setup {
  cmd = {
    "java",
    "-jar",
    "/home/amohammad/Workspace/groovy-language-server/build/libs/groovy-language-server-all.jar",
  },
  on_attach = attach,
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 150,
  },
}

-- typescript

-- lspconfig["tsserver"].setup {
--    cmd = { "typescript-language-server", "--stdio" },
--    filetypes = {"typescriptreact", "typescript.tsx"},
--    root_dir = root_pattern("package.json", "tsconfig.json")
-- }
