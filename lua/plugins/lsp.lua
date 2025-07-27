require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "html", "cssls", "tsserver", "pyright" },
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Setup each language server
local servers = { "html", "cssls", "ts_ls", "pyright" }
for _, server in ipairs(servers) do
    lspconfig[server].setup({
        capabilities = capabilities,
    })
end
