local vimGlobal = vim

vimGlobal.api.nvim_command("let g:closetag_filenames = '*.html,*.tsx,*.jsx, *.js'")
vimGlobal.api.nvim_command("let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.tsx'")

vimGlobal.api.nvim_command("let g:closetag_filetypes = 'html,tsx,jsx,xhtml'")
vimGlobal.api.nvim_command("let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'")
vimGlobal.api.nvim_command("let g:closetag_emptyTags_caseSensitive = 1")
vimGlobal.api.nvim_command([[ let g:closetag_regions = {'typescript.tsx': 'jsxRegion,tsxRegion', 'javascript.jsx': 'jsxRegion', 'typescriptreact': 'jsxRegion,tsxRegion', 'javascriptreact': 'jsxRegion' } ]])

vimGlobal.api.nvim_command("let g:closetag_shortcut = '>'")
vimGlobal.api.nvim_command("let g:closetag_close_shortcut = '<leader>>'")
