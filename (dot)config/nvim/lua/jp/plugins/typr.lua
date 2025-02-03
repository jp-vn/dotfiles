return {
  "nvzone/typr",
  dependencies = "nvzone/volt",
  opts = {},
  cmd = { "Typr", "TyprStats" },
  config = {
    kblayout = "qwerty",
    wpm_goal = 160,
    stats_filepath = vim.fn.stdpath "config" .. "/typrstats",
  },
}
