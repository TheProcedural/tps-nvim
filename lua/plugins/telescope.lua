return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", function()
        builtin.find_files({ find_command = { "find", ".", "-type", "f", "-printf", "%P\n" } })
      end, {})
      --vim.keymap.set("n", "<Leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<Leader>fg", function()
        builtin.live_grep({
          additional_args = function(opts)
            return { "--hidden" }
          end,
        })
      end, {})
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })
      require("telescope").load_extension("ui-select")
    end,
  },
}
