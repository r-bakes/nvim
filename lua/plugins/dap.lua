return {
  "rcarriga/nvim-dap-ui",
  opts = {
    layouts = {
      {
        elements = {
          "scopes",
          "breakpoints",
          "stacks",
          "watches",
        },
        size = 80, -- wider left sidebar
        position = "left",
      },
      {
        elements = {
          "repl",
          "console",
        },
        size = 25, -- taller bottom tray
        position = "bottom",
      },
    },
  },
  config = function(_, opts)
    local dap = require("dap")
    local dapui = require("dapui")

    -- Run LazyVim's default dapui setup first
    require("dapui").setup(opts)

    -- NO AUTOCLOSE - Now override its auto-listeners auoto-close behavior
    dap.listeners.before.event_terminated["dapui_config"] = nil
    dap.listeners.before.event_exited["dapui_config"] = nil
  end,
}
