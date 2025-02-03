return {
  {
    "iamcco/markdown-preview.nvim",
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    vim.keymap.set("n", "<Leader>mm", "<Plug>MarkdownPreviewToggle", { desc = "Markdown Preview Toggle" }),
  },
}
