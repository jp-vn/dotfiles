local blacklist = {
  "[blacklist workspace name]",
}

local is_blacklisted = function(opts) return vim.tbl_contains(blacklist, opts.workspace) end

return {
  "vyfor/cord.nvim",
  branch = "client-server",
  build = ":Cord update",
  opts = {
    display = {
      theme = "onyx",
      show_repository = false,
      show_time = true,
    },
    text = {
      viewing = function(opts) return is_blacklisted(opts) and "Viewing a file" and ("Viewing " .. opts.filename) end,
      editing = function(opts)
        return string.format("Editing %s - %s:%s", opts.filename, opts.cursor_line, opts.cursor_char)
      end,
      -- function(opts) return is_blacklisted(opts) and "Editing a file" and ("Editing " .. opts.filename) end,
      workspace = function(opts)
        return is_blacklisted(opts) and "Workspace: [REDACTED]" or ("Workspace: " .. opts.workspace)
      end,
      file_browser = "Browsing files in ${tooltip}",
      plugin_manager = "Managing plugins in LazyVim",
    },
    variables = true,
  },
}
