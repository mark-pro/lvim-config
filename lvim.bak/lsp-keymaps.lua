
local telescope = require('telescope.builtin')

local function nmap_buff(bufnr)
  local function nmap(key)
    return function (sk, fn, desc)
      lvim.builtin.which_key.mappings[key][sk] = { fn, desc, buffer = bufnr, noremap = true }
    end
  end

  local nmap_lsp = nmap('l')
  local nmap_search = nmap('s')

  nmap_lsp('d', vim.lsp.buf.definition, 'Goto [D]efinition')
  nmap_lsp('I', vim.lsp.buf.implementation, 'Goto [I]mplementation')
  nmap_lsp('R', telescope.lsp_references, 'Goto [R]eferences')
  nmap_lsp('t', vim.lsp.buf.type_definition, 'Goto [T]ype definition')
  nmap_lsp('D', vim.lsp.buf.declaration, 'Goto [D]eclaration')
  nmap_lsp('h', vim.lsp.buf.hover, 'Hover documentation')
  nmap_lsp('H', vim.lsp.buf.signature_help, 'Signature documentation')

  nmap_search('D', telescope.lsp_document_symbols, '[D]ocument symbols')
  nmap_search('w', telescope.lsp_dynamic_workspace_symbols, '[W]orkspace symbols')
end

lvim.lsp.on_attach_callback = function (_, bufnr)
  nmap_buff(bufnr)
end

nmap_buff(nil)

