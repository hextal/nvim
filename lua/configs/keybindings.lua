vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Leader Keybindings

-- markdown to html
vim.api.nvim_set_keymap('n', '<leader>md', ':%!markdown --html4tags <cr>', {noremap = true})

-- inset semicolon to end of the line
vim.api.nvim_set_keymap('i', '<leader>;', '<c-o>A;', {noremap = true})
vim.api.nvim_set_keymap('i', '<leader>,', '<c-o>A,', {noremap = true})
vim.api.nvim_set_keymap('i', '<leader>.', '<c-o>A.', {noremap = true})
vim.api.nvim_set_keymap('i', '<leader>]', '<c-o>A]', {noremap = true})
vim.api.nvim_set_keymap('i', '<leader>}', '<c-o>A}', {noremap = true})
vim.api.nvim_set_keymap('i', '<leader>)', '<c-o>A)', {noremap = true})
vim.api.nvim_set_keymap('i', '<leader><space>', '<c-o>A ', {noremap = true})

-- Tab navigation
for i = 1, 9 do
  vim.api.nvim_set_keymap('n', '<leader>'..i, i..'gt', {noremap = true})
end

vim.api.nvim_set_keymap('n', '<leader>h', ':tabprevious<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>l', ':tabnext<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w', ':tabclose<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>o', 'o<ESC>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>O', 'O<ESC>', {noremap = true})

-- console.log word under cursor
vim.api.nvim_set_keymap('n', '<leader>cl', ":lua vim.cmd('normal! yiwoconsole.log(\"' .. vim.fn.expand('<cword>') .. '\");')<CR>", { silent = true })



vim.api.nvim_set_keymap('n', '<leader>d', ':r!date<esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>n', ':E<esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>s', ':w !sudo tee %<esc>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>q', [[ :s/"\(.*\)"/'\1'<esc> ]], {noremap = true})


-- search for word under the cursor
vim.api.nvim_set_keymap('n', '<leader>/', "\"fyiw :/<c-r>f<cr>", {noremap = true})

-- set wrapping characters around word
for _, c in pairs({'"', "'", '`', '(', '{', '[', '<'}) do
  vim.api.nvim_set_keymap('v', '<leader>'..c, 'S'..c..'lvi'..c, {noremap = true})
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.api.nvim_set_keymap('n', '<F1>', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

