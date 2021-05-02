-- vim.o for setting global options
-- vim.bo for setting buffer-scoped options
-- vim.wo for setting window-scoped options
local vimGlobal = vim

vimGlobal.o.fileencoding = "utf-8" -- The encoding written to file
vimGlobal.o.cmdheight = 2 -- More space for displaying messages
vimGlobal.o.splitbelow = true -- Horizontal splits will automatically be below
vimGlobal.o.writebackup = false -- This is recommended by coc
vimGlobal.o.updatetime = 300 -- Faster completion
vimGlobal.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vimGlobal.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
vimGlobal.o.guifont = "FiraCode Nerd Font"
vimGlobal.o.hidden = true
vimGlobal.o.t_Co = "256" -- Support 256 colors
vimGlobal.o.scrolloff = 5
vimGlobal.o.wildmode = "list:longest"
vimGlobal.o.swapfile = false
vimGlobal.o.backup = false -- This is recommended by coc

vimGlobal.bo.expandtab = true -- Converts tabs to spaces
vimGlobal.bo.smartindent = true -- Makes indenting smart

vimGlobal.wo.number = true -- set numbered lines
vimGlobal.wo.relativenumber = true -- set relative number
vimGlobal.wo.wrap = false -- Display long lines as just one line
vimGlobal.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vimGlobal.wo.cursorline = true -- Enable highlighting of the current line

vimGlobal.cmd('syntax on') -- syntax highlighting
vimGlobal.cmd('set ts=4') -- Insert 2 spaces for a tab
vimGlobal.cmd('set sw=4') -- Change the number of space characters inserted for indentation
vimGlobal.cmd('set undodir=~/.config/nvim/undodir')
vimGlobal.cmd('set undofile')
