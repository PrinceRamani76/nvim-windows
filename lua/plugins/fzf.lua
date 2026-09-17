local actions = require("fzf-lua.actions")
local fzf = require("fzf-lua")


local shared_fd_opts = table.concat({
    "--hidden",
    "--follow",
    "--exclude .git",
    "--exclude node_modules",
    "--exclude dist",
    "--exclude target",
    "--exclude coverage",
    "--exclude build",
    "--exclude .vscode",
    "--exclude .idea",
    '--exclude "*.test.js"',
    '--exclude "*.min.js"',
    '--exclude "*.log"',
    '--exclude "*.lock"',
    '--exclude "__pycache__"',
    '--exclude "*.pyc"',
    '--exclude ".DS_Store"',
}, " ")

local shared_winopts = {
    border = "none",
    scrollbar = false,
    preview = {
        hidden = false,
        scrollbar = false,
        border = "single",
        layout = "horizontal",
    },
}

local shared_winopts_files = {
    border = "none",
    scrollbar = false,
    width = 0.7,
    height = 0.7,
    row = 0.3,
    col = 0.4,
    preview = {
        hidden = false,
        scrollbar = false,
        border = "none",
        layout = "horizontal",
    },
}


local config_dir = vim.fn.stdpath("config")

local personal_projects = vim.fs.normalize(
    vim.fn.expand("~/personal/projects")
)

fzf.setup({
    fzf_colors = true,
    previewer = false,

    fzf_opts = {
        ["--cycle"] = true,
        ["--layout"] = "default",
        ["--pointer"] = " ",
        ["--no-scrollbar"] = "",
    },

    keymap = {
        builtin = {
            false,
            ["<C-d>"] = "preview-half-page-down",
            ["<C-u>"] = "preview-half-page-up",
            ["<C-g>"] = "preview-bottom",
        },

        fzf = {
            false,
            ["tab"] = "",
            ["ctrl-t"] = "toggle+up",
            ["ctrl-d"] = "preview-half-page-down",
            ["ctrl-u"] = "preview-half-page-up",
            ["ctrl-g"] = "preview-bottom",
        },
    },

    actions = {
        files = {
            false,
            ["enter"] = actions.file_switch_or_edit,
            ["tab"] = actions.file_tabedit,
        },
    },

    files = {
        multiprocess = true,
        fd_opts = shared_fd_opts,
        winopts = shared_winopts_files,
    },

    grep = {
        multiprocess = true,
        fd_opts = shared_fd_opts,
        winopts = shared_winopts,
    },

    buffers = {
        fd_opts = shared_fd_opts,
        winopts = shared_winopts,
    },

    diagnostics = {
        winopts = shared_winopts,
    },

    lsp = {
        code_actions = {
            prompt = "Code Actions: ",
            previewer = "codeaction_native",

            preview_pager = table.concat({
                "delta --side-by-side --width=$FZF_PREVIEW_COLUMNS",
                "--hunk-header-style=omit",
            }, " "),

            async_or_timeout = 1000,

            winopts = {
                width = 1,
                height = 1,
                border = "single",
                preview = {
                    border = "single",
                },
            },
        },
    },
})


vim.keymap.set("n", "<leader>f", function()
    fzf.files({
        previewer = true,
        silent = true,
    })
end, { desc = "Find Files" })

vim.keymap.set("n", "<leader>g", function()
    fzf.live_grep({
        silent = true,
        multiprocess = true,
    })
end, { desc = "Live Grep" })

vim.keymap.set("n", "<leader>d", function()
    fzf.diagnostics_document()
end, { desc = "Document Diagnostics" })

vim.keymap.set("n", "<leader>D", function()
    fzf.diagnostics_workspace()
end, { desc = "Workspace Diagnostics" })

vim.keymap.set("n", "<A-c>", function()
    fzf.colorschemes()
end, { desc = "Preview & Set Colorscheme" })


vim.keymap.set("n", "<A-v>", function()
    fzf.files({
        cwd = config_dir,
    })
end, { noremap = true, silent = true, desc = "Neovim Config" })

vim.keymap.set("n", "<A-a>", function()
    local alacritty_dir = vim.fn.expand("~/AppData/Roaming/alacritty")

    fzf.files({
        cwd = alacritty_dir,
    })
end, { noremap = true, silent = true, desc = "Alacritty Config" })

vim.keymap.set("n", "<A-p>", function()
    fzf.files({
        cwd = personal_projects,
    })
end, { noremap = true, silent = true, desc = "Personal Projects" })
