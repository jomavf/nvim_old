local vimGlobal = vim

vimGlobal.api.nvim_command("nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<CR>")
vimGlobal.api.nvim_command("nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>")
vimGlobal.api.nvim_command("nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>")
vimGlobal.api.nvim_command("nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand('<cword>') }<CR>")
vimGlobal.api.nvim_command("nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>")
vimGlobal.api.nvim_command("nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>")
vimGlobal.api.nvim_command("nnoremap <leader>gw :lua require('telescope').extensions.git_worktree.git_worktrees()<CR>")
vimGlobal.api.nvim_command("nnoremap <leader>gm :lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>")
