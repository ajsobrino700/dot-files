return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require('colorizer').setup({
      'css',
      'javasript',
      html = { mode = 'background' }
    }, { mode = 'background' })
  end,
}
