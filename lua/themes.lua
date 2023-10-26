
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
  }
}

lvim.colorscheme = 'dracula'
