local set = vim.keymap.set

vim.keymap.set("i", "<C-c>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-c>", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<A-r>", function()
        vim.cmd("restart")
end, { desc = "Source init.lua" })

set('n', '<Up>', '<Nop>', { noremap = true, silent = true })
set('n', '<Down>', '<Nop>', { noremap = true, silent = true })
set('n', '<Left>', '<Nop>', { noremap = true, silent = true })
set('n', '<Right>', '<Nop>', { noremap = true, silent = true })

set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

set('n', '<C-B>', '<C-B>zz', { noremap = true, silent = true })
set('n', '<C-U>', '<C-U>zz', { noremap = true, silent = true })
set('n', '<C-D>', '<C-D>zz', { noremap = true, silent = true })
set('n', '<C-F>', '<C-F>zz', { noremap = true, silent = true })

set('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
set('n', '<leader>q', ':q!<CR>', { desc = 'Quit Vim' })

set('n', '<C-h>', '<C-w>h', { desc = 'Navigate to left split' })
set('n', '<C-j>', '<C-w>j', { desc = 'Navigate to bottom split' })
set('n', '<C-k>', '<C-w>k', { desc = 'Navigate to top split' })
set('n', '<C-l>', '<C-w>l', { desc = 'Navigate to right split' })

set("n", "<C-Up>", ":resize -2<CR>", { silent = true })
set("n", "<C-Down>", ":resize +2<CR>", { silent = true })
set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

set("n", "<TAB>", ":bn<CR>", { silent = true })
set("n", "<S-TAB>", ":bp<CR>", { silent = true })
set('n', '<Leader>bl', ':buffers<CR>', { noremap = true, silent = true })

set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

set('v', '<', '<gv', { noremap = true, silent = true })
set('v', '>', '>gv', { noremap = true, silent = true })

set("x", "<leader>p", [["_dp]])
set("v", "<leader>dd", '"_d')
set("n", "<leader>dd", '"_dd')

set("n", "<leader>/", ":nohlsearch<CR>", { desc = "Clear search highlight" })

set('n', '<leader>r', 'ciw', { desc = 'Replace current word' })

set("x", "J", ":move '>+1<CR>gv-gv", { silent = true })
set("x", "K", ":move '<-2<CR>gv-gv", { silent = true })

set('n', 'm', function()
        vim.cmd("put! =''")
end, { noremap = true, silent = true })

function ToggleNetrw()
        local is_netrw = vim.bo.filetype == "netrw" or vim.fn.bufname("%"):match("NetrwTreeListing") ~= nil
        if is_netrw then
                vim.cmd("bd")
        else
                vim.cmd("Explore")
        end
end

set("n", "<leader>o", ":lua ToggleNetrw()<CR>", { noremap = true, silent = true })
