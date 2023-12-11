return  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui"
    },
    config = function(_, opts)
      local path = "~/pythondev/zecosite/venv/bin/python"
      require("dap-python").setup(path)
    end,
  }

