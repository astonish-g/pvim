return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      --installs a new language when detected automatically
      auto_install = true,
      ensure_installed = {"lua", "python"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
