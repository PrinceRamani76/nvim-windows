vim.o.background = "light"
vim.cmd("highlight clear")
vim.cmd("syntax reset")

vim.cmd.colorscheme("quiet")
local set = vim.api.nvim_set_hl

set(0, "Normal", { bg = "#FFFFFF" })
set(0, "StatusLine", { bg = "NONE" })
set(0, "StatusLineNC", { bg = "NONE" })

set(0, "CursorLine", { bg = "#f7f7f7" })
set(0, "CursorLineNr", { link = "CursorLine", bold = true })
set(0, "CursorLineSign", { link = "CursorLineNr" })
set(0, "LineNr", { fg = "#999999" })

set(0, "Error", {
        fg = "#ff6b6b",
        bg = "NONE",
        bold = true,
})

set(0, "DiagnosticError", { fg = "#e06c75" })
set(0, "DiagnosticWarn", { fg = "#e5c07b" })
set(0, "DiagnosticInfo", { fg = "#61afef" })
set(0, "DiagnosticHint", { fg = "#56b6c2" })

set(0, "DiagnosticUnderlineError", { undercurl = false, underline = false })
set(0, "DiagnosticUnderlineWarn", { undercurl = false, underline = false })
set(0, "DiagnosticUnderlineInfo", { undercurl = false, underline = false })
set(0, "DiagnosticUnderlineHint", { undercurl = false, underline = false })


set(0, "Pmenu", { bg = "#f2f2f2", fg = "#161616" })
set(0, "PmenuSel", { bg = "#232323", fg = "#ffffff" })

set(0, "Comment", { fg = "#767676" })

set(0, "Keyword", { fg = "#2E2EFF" })
set(0, "@keyword", { link = "Keyword" })


set(0, "Repeat", { link = "Keyword" })


set(0, "Conditional", { link = "Keyword" })
set(0, "@conditional", { link = "Keyword" })

set(0, "String", { fg = "#007600" })
set(0, "@string", { link = "String" })
set(0, "Visual", { bg = "#e7e7e7" })
set(0, "MatchParen", { bg = "#c7c7c7" })
set(0, "DiagnosticUnnecessary", { underline = true })
set(0, "FzfLuaCursorline", { fg = "#000000", bg = "#f7f7f7" })
set(0, "FzfLuaFzfMatch", { fg = "#0000ff", })
set(0, "Title", { fg = "#0000ff", })
set(0, "WinSeparator", { fg = "#000000", bg = "NONE" })
