
local override_filetype_docker = function()
  local file_name = vim.fn.expand("%")
  if file_name:match("docker%-compose%.yaml$") == 'docker-compose.yaml'
      or file_name:match("docker%-compose%.yaml$") == 'docker-compose.yml' then
    vim.cmd(":set filetype=yaml.docker-compose")
  end
end

vim.api.nvim_create_autocmd("BufEnter", {
  callback = override_filetype_docker
})
