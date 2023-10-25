return {
  {
    "diepm/vim-rest-console",
    config = function()
      -- Disable default mappings
      vim.g.vrc_set_default_mappings = 0

      vim.g.vrc_response_default_content_type = "application/json"
      vim.g.vrc_output_default_buffer_name = "rest-console-output.json"
      vim.g.vrc_auto_format_response_patterns = {
        json = "jq",
      }
    end,
  },
}
