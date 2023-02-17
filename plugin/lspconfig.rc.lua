local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then 
  return 
end

local on_attach = function(client, bufnr)

end

require('lspconfig')['tsserver'].setup{
  on_attach = on_attach,
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
}

require('lspconfig')['lua_ls'].setup{
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
    }
  }
}

require('lspconfig')['rust_analyzer'].setup{
  on_attach = on_attach,
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' }
}
