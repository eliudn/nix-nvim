{ pkgs, ... }:
{
  colorschemes.nightfox = {
    enable = true;
  };
  extraPackages = [ pkgs.fd ];
  imports = [
    ./plugins
    ./options

    ./lsp_server/nix
    ./lsp_server/lua
    ./lsp_server/php
    ./lsp_server/html
    ./lsp_server/json
    ./lsp_server/javascript
    ./lsp_server/python

    # ./frameworks/vue.nix
    ./frameworks/tailwindcss.nix
    ./frameworks/laravel

    ./utils/obsidian.nix
  ];

}
