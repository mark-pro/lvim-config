
lvim.builtin.which_key.mappings['h'] = {
  name = 'harpoon',
  [' '] = {'<Cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', '[ ] toggle quick menu'},
  a = {'<Cmd>lua require("harpoon.mark").add_file()<CR>', '[a] add file to harpoon'},
  h = {'<Cmd>lua require("harpoon-ui").nav_prev()<CR>', '[h] goto previous mark'},
  l = {'<Cmd>lua require("harpoon-ui").nav_next()<CR>', '[l] goto next mark' },
}

--for i = 1, 10 do
--  lvim.builtin.which_key.mappings['h'][i] =
--    {'<Cmd>lua require("harpoon.term").gotoTerminal('..i..')<CR>', '['..i..'] goto marked index'}
--end

require("telescope").load_extension('harpoon')
