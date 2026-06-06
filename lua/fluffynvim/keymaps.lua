-- Normal Keymaps
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex) -- Fallback, Use Neotree instead

-- Format
vim.keymap.set("n", "<leader>F", vim.lsp.buf.format)

-- Update Packages
vim.keymap.set("n", "<leader>up", vim.pack.update)

-- Move Lines Up and Down
vim.keymap.set("v", "<S-Up>", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })
vim.keymap.set("v", "<S-Down>", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })

-- Indent Lines
vim.keymap.set("v", ">", ">gv", { desc = "indent and keep selection" })
vim.keymap.set("v", "<", "<gv", { desc = "unindent and keep selection" })

-- Replace all instances of selection
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Replace word under cursor" })

-- Yank into system clipboard
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y') -- yank motion
vim.keymap.set({ 'n', 'v' }, '<leader>Y', '"+Y') -- yank line

-- Paste from system clipboard
vim.keymap.set('n', '<leader>p', '"+p') -- paste after cursor
vim.keymap.set('n', '<leader>P', '"+P') -- paste before cursor

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: Find Files" })
vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Telescope: Git File" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope: Find Buffers" })
vim.keymap.set("n", "<leader>fs", builtin.current_buffer_fuzzy_find,
    { desc = "Telescope: Find String (Fuzzy Find in File)" })
vim.keymap.set("n", "<leader>gf", builtin.live_grep, { desc = "Telescope: Grep Files" })
vim.keymap.set("n", "<leader>gs", builtin.grep_string, { desc = "Telescope: Grep String" })

-- Undotree
vim.keymap.set("n", "<leader>u", function()
    vim.cmd.packadd("nvim.undotree")
    require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })

-- Neotree
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd(":Neotree filesystem reveal float")
end, { desc = "Open NeoTree" })
vim.keymap.set("n", "<leader>e", function()
    vim.cmd(":Neotree filesystem reveal current")
end, { desc = "Open Filetree in current Buffer" })

-- Hover?
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover)
