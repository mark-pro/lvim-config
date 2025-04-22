
lvim.plugins = {
  'Mofiqul/dracula.nvim',
  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = true,
        theme = 'dracula-nvim',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
  'github/copilot.vim',
  'tpope/vim-surround',
  {
    "s1n7ax/nvim-window-picker",
    version = "1.*",
    config = function()
      require("window-picker").setup({
        autoselect_one = true,
        include_current = false,
        theme = 'dracula-nvim',
        filter_rules = {
          -- filter using buffer options
          bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "nvim-tree", "neo-tree", "neo-tree-popup", "notify", "quickfix" },

            -- if the buffer type is one of following, the window will be ignored
            buftype = { "terminal" },
          },
        },
        -- other_win_hl_color = "#BD93F9",
      })
    end,
  },
  'mrjones2014/nvim-ts-rainbow',
  'nvim-lua/plenary.nvim',
  'ThePrimeagen/harpoon', 
  {
    "s1n7ax/nvim-window-picker",
    version = "1.*",
    config = function()
      require("window-picker").setup({
        autoselect_one = true,
        include_current = false,
        filter_rules = {
          -- filter using buffer options
          bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "neo-tree", "neo-tree-popup", "notify", "quickfix" },

            -- if the buffer type is one of following, the window will be ignored
            buftype = { "terminal" },
          },
        },
        other_win_hl_color = "#e35e4f",
      })
    end,
 },
}

lvim.colorscheme = 'dracula'
lvim.builtin.treesitter.rainbow.enable = true
