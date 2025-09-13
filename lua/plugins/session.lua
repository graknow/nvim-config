return {
    {
        "rmagatti/auto-session",
        lazy = false,

        ---enables autocomplete for opts
        ---@module "auto-session"
        ---@type AutoSession.Config
        opts = {
            auto_save = true,
            suppressed_dirs = {
                "~/",
                "~/Projects",
                "~/Downloads",
                "/",
                "~/3DModels",
                "~/app",
                "~/Documents",
                "~/Music",
                "~/Videos"
            },
            -- log_level = 'debug',
        },
        keys = {
            -- Will use Telescope if installed or a vim.ui.select picker otherwise
            { "<leader>wl", "<cmd>SessionSearch<CR>",         desc = "Session search" },
            { "<leader>ws", "<cmd>SessionSave<CR>",           desc = "Save session" },
            { "<leader>wa", "<cmd>SessionToggleAutoSave<CR>", desc = "Toggle autosave" },
        },
    },
}
