return function()
  _G.map = vim.keymap.set
  _G.nvim_nix = vim.fn.getenv("NVIM_NIX") ~= vim.NIL and true or false

  if nvim_nix then
    --
    -- nvim packaged with nix
    --
    require("aorith.plugins.treesitter")

    require("aorith.plugins.lsp")
    require("aorith.plugins.linting")
    require("aorith.plugins.formatting")
  else
    --
    -- nvim without nix
    --
    vim.g.loaded_node_provider = 0
    vim.g.loaded_perl_provider = 0
    vim.g.loaded_python_provider = 0
    vim.g.loaded_python3_provider = 0
    vim.g.loaded_ruby_provider = 0

  end
end