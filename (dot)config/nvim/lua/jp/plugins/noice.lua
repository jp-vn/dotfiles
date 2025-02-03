return {
  { "rcarriga/nvim-notify", enabled = false },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      views = {
        mini = {
          position = {
            row = -2,
            col = "100%",
          },
        },
      },
      lsp = {
        progress = {
          enabled = false,
        },
      },
      presets = {
        bottom_search = true,
      },
      cmdline = {
        view = "cmdline_popup",
      },
      messages = {
        enabled = false,
      },
      popupmenu = {
        enabled = true,
      },
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
    },
  },
}
