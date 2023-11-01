return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    vim.list_extend(opts.default_component_configs, {
      file_size = {
        enabled = false,
      },
      type = {
        enabled = false,
      },
      last_modified = {
        enabled = false,
      },
      created = {
        enabled = false,
      },
    })
  end,
}
