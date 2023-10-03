vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })

-- Telescope 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- LazyGit 
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { noremap = true })
