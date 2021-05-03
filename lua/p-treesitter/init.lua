require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    ignore_install = {"haskell"},
    highlight = {
        enable = true
    },
    -- indent = {enable = true, disable = {"python", "html", "javascript"}},
    -- TODO seems to be broken
    indent = {enable = {"javascriptreact"}},
    autotag = {enable = true},
}
