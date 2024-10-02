{
  pkgs,
  inputs,
  lib,
  ...
}:
let
  laravelPlugin = pkgs.vimUtils.buildVimPlugin {
    name = "laravel";
    src = inputs.plugin-laravel;
  };
in
{
  imports = [ 
    ./blade
    ./lineStatus.nix
  ];

  extraPlugins = [
    laravelPlugin
    pkgs.vimPlugins.nui-nvim
    pkgs.vimPlugins.vim-dotenv
    pkgs.vimPlugins.promise-async
  ];

  extraPackages = [ pkgs.fd ];

  extraConfigLua = "require('laravel').setup()";
  plugins = {
    none-ls = {
      sources = {
        formatting.pint = {
          enable = true;
          package = null;
        };
      };
    };
  };

  keymaps =
    lib.mapAttrsToList
      (key: action: {
        inherit key action;
        mode = "n";
      })
      {
        "<leader>ll" = "<cmd>Laravel<cr>";
        "<c-g>" = "<cmd>Laravel view_finder<cr>";
        "<leader>la" = "<cmd>Laravel art<cr>";
        "<leader>lr" = "<cmd>Laravel routes<cr>";
        "<leader>lh" = "<cmd>Laravel art docs<cr>";
        "<leader>lm" = "<cmd>Laravel make<cr>";
        "<leader>ln" = "<cmd>Laravel related<cr>";
      };
}
