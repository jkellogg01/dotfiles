return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            vim.o.termguicolors = true
            vim.o.background = "dark"
            vim.cmd([[
                silent! colorscheme rose-pine
                hi Normal guibg=#00000000
            ]])
        end,
    },
}
