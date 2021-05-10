local lspconfig = require'lspconfig'
lspconfig.vuels.setup{
	cmd = {DATA_PATH .. "/lspinstall/vue/node_modules/.bin/vls"},
	root_dir = lspconfig.util.root_pattern(".git","."),
	filetypes = { "vue" },
}
