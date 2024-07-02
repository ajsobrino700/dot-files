return {
  "mfussenegger/nvim-dap-python",
  config = function()
    require("dap-python").setup("python")
    require("dap").set_log_level("TRACE")
  end,
}
