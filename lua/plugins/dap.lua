return {
  "rcarriga/nvim-dap-ui",
  opts = function(_, opts)
    local dap = require("dap")

    -- Override the default LazyVim behavior to not auto-close dap-ui
    dap.listeners.after.event_terminated["dapui_config"] = nil
    dap.listeners.before.event_terminated["dapui_config"] = nil
    dap.listeners.before.event_exited["dapui_config"] = nil

    return opts
  end,
}

