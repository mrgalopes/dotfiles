
--- Neovim Config
-- General
lvim.format_on_save.enabled = true


-- Key mappings
--- Faster buffer switching
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
vim.keymap.set("n", "<S-l>", ":bnext<CR>")

lvim.builtin.which_key.mappings["lR"] = {
  "<cmd>LspRestart<CR>", "Restart server"
}


-- LSP
--- Enable Emmet for html
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "emmet_language_server"
end, lvim.lsp.automatic_configuration.skipped_servers)

require("lvim.lsp.manager").setup("typst")


-- Plugins
lvim.plugins = {
  {
    'kaarmu/typst.vim',
    ft = 'typst',
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    cmd = {
      "G",
      "Git",
      "Gdiffsplit",
      "Gread",
      "Gwrite",
      "Ggrep",
      "GMove",
      "GDelete",
      "GBrowse",
      "GRemove",
      "GRename",
      "Glgrep",
      "Gedit"
    },
    ft = { "fugitive" }
  },
  {
    "nathangrigg/vim-beancount",
    ft = "beancount"
  }
}
--- More info
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
