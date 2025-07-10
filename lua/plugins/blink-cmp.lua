return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- Let me iterate up and down suggestions with Ctrl-j and Ctrl-k
    opts.keymap["<C-j>"] = { "select_next", "fallback" } -- next item
    opts.keymap["<C-k>"] = { "select_prev", "fallback" } -- previous item
  end,
}
