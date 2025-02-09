return {
  "atiladefreitas/dooing",
  config = function()
    require("dooing").setup {
      -- your custom config here (optional)
      window = {
        position = "center",
      },
      keymaps = {
        toggle_window = "<leader>td",
        remove_duplicates = "<leader>tD",
        open_todo_scratchpad = "<leader>ts",
      },
    }
  end,
}
