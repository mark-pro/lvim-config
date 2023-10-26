
lvim.plugins = {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require('toggleterm').setup {
        open_mapping = [[<C-`>]],
        direction = 'horizontal',
      }

    end},
}
local term = require('toggleterm.terminal').Terminal
local lazygit = term:new({ cmd = "lazygit", hidden = true, direction = 'float', display_name = 'Lazy' })
function LazygitToggle()
  lazygit:toggle()
end

local btm = term:new({ hidden = true, direction = 'float' })
function BottomToggle()
  btm:toggle()
end

--lvim.builtin.which_key.mappings['<C-\\>'] = {'<cmd>lua BottomToggle()<CR>', 'Bottom terminal'}
lvim.builtin.which_key.mappings['g']['g'] = {
  '<cmd>lua LazygitToggle()<CR>', 'Lazygit'
} 

