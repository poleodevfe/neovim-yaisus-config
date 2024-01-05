vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Import ufo and lspconfig safely
local status_ufo, ufo = pcall(require, "ufo")
if not status_ufo then
	return
end

local status_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_lspconfig then
	return
end

-- Tell the server the capability of foldingRange
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

-- Setup lsp servers with folding range capabilities
local language_servers = lspconfig.util.available_servers()
for _, ls in ipairs(language_servers) do
	lspconfig[ls].setup({
		capabilities = capabilities,
	})
end

-- Setup ufo
ufo.setup()
