return {
  "nvzone/timerly",
  dependencies = {
    "nvzone/volt",
  },
  config = {
    minutes = { 25, 5 },
    on_start = nil, -- func
    on_finish = function() vim.notify "Timerly: time's up!" end,
    mapping = nil, -- is func
    position = "top-right", -- top-left, top-right, bottom-left, bottom-right
    -- or function(w, h) return row, col end , w - w of window, arg passed by plugin
  },
  keys = {
    { "<leader>tm", "<cmd>TimerlyToggle<cr>", desc = "Toggle Timer" },
  },
}
