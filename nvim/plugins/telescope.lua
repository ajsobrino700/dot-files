-- checkhealth validate the software in the system that you need
-- It is mandatory have ripgrep and fd-find
-- make command is mandatory to build the fzf native

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        }
    },
    config = function(opts)
        require("telescope").setup(opts)
        require("telescope").load_extension('fzf')
    end,
    keys = {
        {
            "<leader>pp",
            function()
                require("telescope.builtin").git_files({ show_untracked = true})
            end,
            desc = "Telescope Git Files",
        },
        {
            "<leader>pe",
            function()
                require("telescope.builtin").buffers()
            end,
            desc = "Telescope buffers",
        },
        {
            "<leader>gs",
            function()
                require("telescope.builtin").git_status()
            end,
            desc = "Telescope Git Status"
        },
        {
            "<leader>gc",
            function()
                require("telescope.builtin").git_commits()
            end,
            desc = "Telescope Git Status"
        },
        {
            "<leader>gb",
            function()
                require("telescope.builtin").git_branches()
            end,
            desc = "Telescope Git Branches"
        },
        {
            "<leader>pf",
            function()
                require("telescope.builtin").find_files()
            end,
            desc = "Telescope Find Files"
        },
        {
            "<leader>ph",
            function()
                require("telescope.builtin").help_tags()
            end,
            desc = "Telescope Help"
        },
        {
            "<leader>bb",
            function()
                require("telescope").extensions.file_browser.file_browser({path = "%:h:p", select_buffer = true})
            end,
            desc = "Telescope file browser"
        },
    },
}
