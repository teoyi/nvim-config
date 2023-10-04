-- Normal Mode
vim.keymap.set("n", "<space>q", ":q<CR>", { noremap = true })
vim.keymap.set("n", "|", ":vsplit<CR>", { noremap = true })
vim.keymap.set("n", "\\", ":split<CR>", { noremap = true })
-- -- buffers
vim.keymap.set("n", "<leader>c", ":bd<CR>", { noremap = true })
vim.keymap.set("n", "<leader>C", ":bd!<CR>", { noremap = true })
vim.keymap.set("n", "<leader>bC", ":bufdo bd<CR>", { noremap = true })
-- -- splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })
-- Insert Mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
-- vim.keymap.set('n', '<leader>e', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })
vim.keymap.set("n", "<leader>e", ":E<CR>", { noremap = true })

-- LazyGit
vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true })
