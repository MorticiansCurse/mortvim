return {
  "nvim-tree/nvim-tree.lua",
  version = "*", 
  lazy = false,  
  dependencies = {
    "nvim-tree/nvim-web-devicons", 
  },
  config = function()
    require("nvim-tree").setup({
      sort = { sorter = "case_sensitive" },
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
      },
      git = {
        enable = true,
        ignore = false,
      },
    })

    local keymap = vim.keymap.set
    keymap("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    keymap("n", "<leader>o", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" })
  end,
}
