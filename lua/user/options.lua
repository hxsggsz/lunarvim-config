if vim.g.neovide then
  vim.opt.guifont = "MonoLisa:h24"

  vim.g.neovide_transparency = 0.6
  vim.g.transparency = 0.6
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_input_macos_alt_is_meta = false
end

lvim.log.level = "warn"
lvim.format_on_save = true

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.adaptive_size = true
lvim.builtin.nvimtree.setup.view.side = "right"
lvim.builtin.nvimtree.setup.git.enable = true
-- lvim.builtin.nvimtree.setup.view.width = "fit_content"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.filters.custom = {}

lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.project.detection_methods = { "lsp", "pattern" }
lvim.builtin.project.patterns = {
  ".git",
  "package-lock.json",
  "yarn.lock",
  "package.json",
  "requirements.txt",
}

vim.opt.shell = "/bin/zsh"
lvim.format_on_save = true

vim.o.linebreak = true
vim.o.wrap = false
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

lvim.builtin.telescope.defaults.path_display = {
  shorten = 4,
}

vim.opt.fileformat = "unix"
