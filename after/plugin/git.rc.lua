local status, git = pcall(require, 'git')
if (not status) then
  return
end

git.setup({
  -- Open blame window
  blame = "<Leader>gb",
  -- Close blame window
  quit_blame = "q",
  -- Open file/folder in git repository
  browse = "<Leader>go"
})
