-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- Keybindings
local Map = vim.api.nvim_set_keymap
local Keymap = vim.keymap.set
local Opts = { noremap = true, silent = true }

-- Leader Keybindings
Map("n", "<Space>", "<Nop>", Opts)
vim.g.mapleader = " "

--trouble
Keymap("n", "<leader>xx", function()
	require("trouble").open()
end)

-- inset semicolon to end of the line
Map("i", "<leader>;", "<c-o>A;", Opts)
Map("i", "<leader>,", "<c-o>A,", Opts)
Map("i", "<leader>.", "<c-o>A.", Opts)
Map("i", "<leader>]", "<c-o>A]", Opts)
Map("i", "<leader>}", "<c-o>A}", Opts)
Map("i", "<leader>)", "<c-o>A)", Opts)
Map("i", "<leader><space>", "<c-o>A ", Opts)

-- Define a function that emulates the behavior of your Vim command
function Console_log_current_word()
	local word = vim.fn.expand("<cword>")
	local command = string.format("console.log('%s:', %s);", word, word)
	vim.fn.setreg("+", command) -- Copy the command to the system clipboard register
	vim.fn.feedkeys('"+P') -- Paste the command from the clipboard register
end

-- Map the key sequence to the Lua function
Map("n", "<Leader>co", ":lua Console_log_current_word()<CR>", Opts)

Map("n", "<leader>d", ":r!date<esc>", Opts)

-- search for word under the cursor
Map("n", "<leader>/", '"fyiw :/<c-r>f<cr>', Opts)

-- set wrapping characters around word
for _, c in pairs({ '"', "'", "`", "(", "{", "[", "<" }) do
	Map("v", "<leader>" .. c, "S" .. c .. "lvi" .. c, Opts)
end
