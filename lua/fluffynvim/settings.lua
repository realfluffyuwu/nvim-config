vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.smartindent = true
vim.o.inccommand = "split"
vim.o.incsearch = true
vim.o.hlsearch = false
vim.g.clipboard = "wl-copy"
vim.o.splitbelow = true
vim.o.splitright = false
vim.o.backup = false
vim.o.swapfile = false
vim.o.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.o.undofile = true
vim.o.signcolumn = "yes"
vim.o.cmdheight = 0
vim.o.termguicolors = true
vim.o.winborder = "rounded"

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})
