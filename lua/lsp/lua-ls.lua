-- https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone)
local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')

if not lspconfig.sumneko_lua then
	configs.sumneko_lua = {
		default_config = {
			cmd = {'/Users/jose.veliz/.local/share/nvim/lspinstall/lua/sumneko-lua-language-server'};
			filetypes = {'lua'};
			root_dir = function(fname)
			  return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
			end;
			settings = {
				Lua = {
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = {'vim'}
					},
					runtime = {
						-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
						version = 'LuaJIT',
						-- Setup your lua path
						path = vim.split(package.path, ';')
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
						maxPreload = 10000
					}
				}
			}
		}
	}
end

require('lspconfig').sumneko_lua.setup {
	on_attach = require'lsp'.common_on_attach,
	cmd = {'/Users/jose.veliz/.local/share/nvim/lspinstall/lua/sumneko-lua-language-server'};
	filetypes = {'lua'};
	root_dir = function(fname)
	  return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
	end;
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = {'vim'}
			},
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
				-- Setup your lua path
				path = vim.split(package.path, ';')
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true},
				maxPreload = 10000
			}
		}
	}
}
