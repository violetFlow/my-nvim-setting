-- global Setting
vim.g.mapleader = ","
vim.g.airline_theme = 'hybrid'

-- colorscheme
vim.cmd[[colorscheme tokyonight-storm]]

-- personal settings
vim.o.number = true	
vim.o.shiftwidth = 2

-- personal keymap
vim.api.nvim_set_keymap('n', '<leader>w', ':bp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d', ':bd<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l', ':ls<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>s', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t', ':below term<CR>', { noremap = true, silent = true })

