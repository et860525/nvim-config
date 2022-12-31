local status, treesitter = pcall(require, 'nvim-treesitter.configs')
if (not status) then
  return
end

treesitter.setup{
  -- A list of parser names, or "all"
  ensure_installed = { 'bash', 'c', 'cpp', 'css', 'html', 'javascript', 'json', 'lua', 'python', 'typescript', 'vim', 'yaml', },

  highlight = {
    enble = true,
    disable = {}
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
}
