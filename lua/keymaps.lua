
lvim.builtin.which_key.mappings['x'] = {
  name = 'Clipboard',
  c = {
    name = 'copy',
    a = { '<Cmd>%y<CR>', 'Yank all' },
  },
}

-- move lines keymap
lvim.keys.normal_mode['<A-Up>'] = ':m .-2<CR>=='
lvim.keys.normal_mode['<A-Down>'] = ':m .+1<CR>=='
lvim.keys.insert_mode['<A-Up>'] = '<Esc>:m .-2<CR>==gi'
lvim.keys.insert_mode['<A-Down>'] = '<Esc>:m .+1<CR>==gi'
lvim.keys.visual_mode['<A-Up>'] = ":m '<-2<CR>gv=gv"
lvim.keys.visual_mode['<A-Down>'] = ":m '>+1<CR>gv=gv"

lvim.builtin.which_key.mappings[','] = { '_', 'Goto start of line' }
lvim.builtin.which_key.mappings['.'] = { '$', 'Goto end of line' }


-- example mappings you can place in some other place
-- An awesome method to jump to windows
local picker = require('window-picker')

vim.keymap.set("n", ",w", function()
  local picked_window_id = picker.pick_window({
    include_current_win = true
  }) or vim.api.nvim_get_current_win()
  vim.api.nvim_set_current_win(picked_window_id)
end, { desc = "Pick a window" })

-- Swap two windows using the awesome window picker
local function swap_windows()
  local window = picker.pick_window({
    include_current_win = false
  })
  local target_buffer = vim.fn.winbufnr(window)
  -- Set the target window to contain current buffer
  vim.api.nvim_win_set_buf(window, 0)
  -- Set current window to contain target buffer
  vim.api.nvim_win_set_buf(0, target_buffer)
end

vim.keymap.set('n', ',W', swap_windows, { desc = 'Swap windows' })
