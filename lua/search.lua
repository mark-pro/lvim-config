lvim.builtin.which_key.mappings['s']['/'] = {
  function ()
      -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end,
  '[/] Fuzzily search in current buffer'
}

lvim.builtin.which_key.mappings['s']['g'] = {
  require('telescope.builtin').git_files, '[S]earch [G]it files'
}

lvim.builtin.which_key.mappings['s']['<space>'] = {
  require('telescope.builtin').buffers, '[ ] Search in current buffers'
}
