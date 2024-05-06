return {
    {
        "Mofiqul/dracula.nvim",
        config = function()
            vim.o.termguicolors = true
            vim.cmd.colorscheme('dracula')
            vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },
}

