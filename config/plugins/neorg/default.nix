{ pkgs, ... }:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin { inherit (pkgs.luaPackages.lua-utils-nvim) pname version src; })
    (pkgs.vimUtils.buildVimPlugin { inherit (pkgs.luaPackages.pathlib-nvim) pname version src; })
    (pkgs.vimUtils.buildVimPlugin { inherit (pkgs.luaPackages.nvim-nio) pname version src; })
  ];

  plugins = {
    neorg = {
      enable = true;
      # lazyLoading = true;
      modules = {
        "core.defaults" = { };
        "core.dirman" = {
          config = {
            workspaces = {};
          };
        };

      };
    };
    treesitter = {
      grammarPackages = with pkgs.tree-sitter-grammars; [
        tree-sitter-norg
        tree-sitter-norg-meta
      ];
    };

  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>ne";
      action = "<cmd>Neorg<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<localleader>fn";
      action = "<cmd>Telescope find_files cwd=~/notes/<CR>";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>nn";
      action = "<Plug>(neorg.dirman.new-note)";
      options = {
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<leader>nt";
      action = "<Plug>(neorg.pivot.list.toggle)";
      options = {
        silent = true;
      };
    }
  ];

}
