vim.o.background = "dark"
vim.cmd("highlight clear")
vim.cmd("syntax reset")

vim.cmd.colorscheme("quiet")
local set = vim.api.nvim_set_hl


set(0, "Normal", { bg = "#131313" })
set(0, "EndOfBuffer", { fg = "#131313" })
set(0, "StatusLine", { bg = "NONE" })
set(0, "StatusLineNC", { bg = "NONE" })

set(0, "CursorLine", { bg = "#202020" })
set(0, "CursorLineNr", { link = "CursorLine", bold = true })
set(0, "CursorLineSign", { link = "CursorLineNr" })
set(0, "LineNr", { fg = "#4a4a4a" })

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


set(0, "Pmenu", { bg = "#333333", fg = "#c0c0c0" })
set(0, "PmenuSel", { bg = "#232323", fg = "#ffffff" })

set(0, "Comment", { fg = "#777777" })

set(0, "Keyword", { fg = "#8593CC" })
set(0, "@keyword", { link = "Keyword" })


set(0, "Repeat", { link = "Keyword" })


set(0, "Conditional", { link = "Keyword" })
set(0, "@conditional", { link = "Keyword" })

set(0, "String", { fg = "#999900" })
set(0, "@string", { link = "String" })
set(0, "Visual", { bg = "#2a2a2a" })
set(0, "MatchParen", { bg = "#4a4a4a" })
set(0, "WinSeprator", { fg = "#ffffff" })


set(0, "DiagnosticUnnecessary", { underline = true })
