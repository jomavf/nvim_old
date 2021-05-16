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
vimGlobal.o.guifont = "UbuntuMono Nerd Font Mono" -- use this https://github.com/ryanoasis/nerd-fonts
vimGlobal.o.termguicolors = true -- set term gui colors most terminals support this
vimGlobal.o.hidden = true
vimGlobal.o.t_Co = "256" -- Support 256 colors
vimGlobal.o.scrolloff = 5
vimGlobal.o.wildmode = "list:longest"
vimGlobal.o.swapfile = false
vimGlobal.o.backup = false -- This is recommended by coc
vimGlobal.o.pumheight = 10 -- Makes popup menu smaller

vimGlobal.bo.expandtab = true -- Converts tabs to spaces
vimGlobal.bo.smartindent = true -- Makes indenting smart

vimGlobal.wo.number = true -- set numbered lines
vimGlobal.wo.relativenumber = true -- set relative number
vimGlobal.wo.wrap = false -- Display long lines as just one line
vimGlobal.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
vimGlobal.wo.cursorline = true -- Enable highlighting of the current line

vimGlobal.cmd('syntax on') -- syntax highlighting
-- https://www.youtube.com/watch?v=H-4H6L8IcGM&t=444s  -- .editorconfig => 8:30 youtube video magikas
vimGlobal.cmd('set ts=2') -- Insert 2 spaces for a tab
vimGlobal.cmd('set sw=2') -- Change the number of space characters inserted for indentation
vimGlobal.cmd('set undodir=~/.config/nvim/.undodir')
vimGlobal.cmd('set undofile')
vimGlobal.cmd('set shortmess+=c') -- Don't pass messages to |ins-completion-menu|.
vimGlobal.cmd('set nohlsearch')
vimGlobal.cmd('set autochdir')
vimGlobal.cmd('set noswapfile')
vimGlobal.cmd('set nobackup')
