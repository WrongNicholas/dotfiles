-- ~/.config/nvim/lua/plugins/telescope.lua

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' },

      -- Temporary fix: disable Telescope preview highlighting due to Tree-sitter previewer crashes
      opts = {
        defaults = {
          preview = {
            treesitter = false,
            syntax = false,
          },
        },
      },
      cmd = "Telescope",

      keys = {
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "Live Grep" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "List Buffers" },
        { "<leader>fn", "<cmd>Telescope notify<cr>",     desc = "See Notifications" },
        { "<leader>fk", "<cmd>Telescope keymaps<cr>",    desc = "See Keymaps" },
      },
  }
