local kind = require('user.kind')

lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"

lvim.keys.normal_mode["<S-x>"] = ":BufferKill<CR>"
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["<C-a>"] = "ggVG"

-- open terminal
lvim.keys.normal_mode["\\"] = ":ToggleTerm<CR>"

-- open terminal error
lvim.keys.normal_mode["|"] = ":TroubleToggle<CR>"

vim.opt.relativenumber = true

-- navigate through a word and enter in insert mode
vim.keymap.set('n', 'sc', function()
  vim.cmd([[:HopWord]])
  vim.schedule(function()
    vim.cmd([[startinsert]])
  end)
end)

vim.keymap.set('n', 'gn', ":tabe %<CR>")
lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
  kind.cmp_kind.Reference .. " Find references"
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
  -- ":lua require'telescope.builtin'.lsp_definitions()<cr>",
  kind.cmp_kind.Reference .. " Definitions"
}
lvim.keys.normal_mode["<C-b>"] = ":TmuxNavigateLeft<CR>"
lvim.lsp.buffer_mappings.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
  kind.cmp_kind.Reference .. " Type Definition"
}

lvim.lsp.buffer_mappings.normal_mode["gf"] = {
  ":Telescope frecency<cr>",
  kind.cmp_kind.Reference .. " Telescope Frecency"
}
