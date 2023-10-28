
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
