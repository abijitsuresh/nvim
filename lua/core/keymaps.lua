-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Move selected lines up one line
vim.api.nvim_set_keymap('x', '<C-k>', ":m-2<CR>gv=gv", { noremap = true, silent = true })

-- Move selected lines down one line
vim.api.nvim_set_keymap('x', '<C-j>', ":m'>+<CR>gv=gv", { noremap = true, silent = true })

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

vim.keymap.set('i', 'kj', '<Esc>', {})
--vim.keymap.set({'n', 'i'}, 'zz', '<Esc>:update<CR>', {})
