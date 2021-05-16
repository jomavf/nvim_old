-- local vimGlobal = vim
-- 
-- local capabilities = vimGlobal.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- require('lspconfig/configs').emmet_ls = {
--   default_config = {
--     cmd = {'emmet-ls', '--stdio'};
--     filetypes = {'html', 'css'};
--     root_dir = function()
--       return vimGlobal.loop.cwd()
--     end;
--     settings = {};
--   };
-- }
-- 
-- require('lspconfig').emmet_ls.setup{
--   -- on_attach = on_attach;
-- }

local vimGlobal = vim
vimGlobal.api.nvim_command("let g:user_emmet_install_global = 0")
vimGlobal.api.nvim_command("autocmd FileType html,css EmmetInstall")
vimGlobal.api.nvim_command("let g:user_emmet_leader_key='<C-M>'")

