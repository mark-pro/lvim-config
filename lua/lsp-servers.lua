
-- add `csharp_ls` to `skipped_servers` list
vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "csharp_ls", "csharp-ls" })
-- remove `omnisharp` from `skipped_servers` list
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "omnisharp"
end, lvim.lsp.automatic_configuration.skipped_servers)
