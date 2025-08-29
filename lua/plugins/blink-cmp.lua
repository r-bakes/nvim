return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- ⬇️ add your custom mappings
    opts.keymap["<C-j>"] = { "select_next", "fallback" } -- next item
    opts.keymap["<C-k>"] = { "select_prev", "fallback" } -- previous item
  end,
}
