local status, saga = pcall(require, 'lspsaga')
if (not status) then
  return
end

saga.init_lsp_saga({
  server_filetype_map = {
    typescript = 'typescript'
  }
})

local keymap = vim.keymap.set

-- Hover Doc
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

-- Diagnostic jump can use `<c-o>` to jump back
keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { silent = true })
keymap("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<CR>", { silent = true })

-- Peek Definition
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", { silent = true })

-- Preview Definition
keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', { silent = true} )

-- Rename
keymap("n", "gr", "<cmd>Lspsaga rename<CR>", { silent = true })
