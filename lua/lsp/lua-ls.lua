-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

local sumneko_root_path = DATA_PATH .. "/lspinstall/lua"
local sumneko_binary = sumneko_root_path .. "/sumneko-lua-language-server"


local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')

if not lspconfig.sumneko_lua then
	configs.sumneko_lua = {
		default_config = {
		  cmd = {'/Users/jose.veliz/.local/share/nvim/lspinstall/lua/./sumneko-lua-language-server'};
		  filetypes = {'lua'};
		  root_dir = function(fname)
			return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
		  end;
		  settings = {};
		};
	}
end

lspconfig.sumneko_lua.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    on_attach = require'lsp'.common_on_attach,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
                maxPreload = 10000
            }
        }
    }
}
