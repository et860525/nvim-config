local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then
  return
end

lspsaga.setup({})

local keymap = vim.keymap.set

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")

-- Diagnostic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- Peek Definition
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>")

-- Preview Definition
keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>')

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>")
