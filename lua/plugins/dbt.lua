return {
  "PedramNavid/dbtpal",
  lazy = true,
  config = function()
    local dbt = require("dbtpal")
    dbt.setup({
      -- Path to the dbt executable
      path_to_dbt = "dbt",

      -- Path to the dbt project, if blank, will auto-detect
      -- using currently open buffer for all sql,yml, and md files
      path_to_dbt_project = "",

      -- Path to dbt profiles directory
      -- path_to_dbt_profiles_dir = vim.fn.expand("~/.dbt"),

      -- Search for ref/source files in macros and models folders
      extended_path_search = true,

      -- Prevent modifying sql files in target/(compiled|run) folders
      protect_compiled_files = true,
    })

    -- Enable Telescope Extension
    require("telescope").load_extension("dbtpal")
  end,
  keys = {
    { "<leader>drf", "<cmd>dbt.run", desc = "Run DBT" },
    { "<leader>drp", "<cmd>dbt.run_all", desc = "Run All DBT" },
    { "<leader>dtf", "<cmd>dbt.test", desc = "Test DBT" },
    { "<leader>dm", "<cmd>lua require('dbtpal.telescope').dbt_picker()", desc = "DBT Picker" },
  },
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
}
