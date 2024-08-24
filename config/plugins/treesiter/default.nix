{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;

      settings = {
        indent.enable = true;
        highlight.enable = true;

        #ensure_installed = "all";
      };
      grammarPackages = pkgs.vimPlugins.nvim-treesitter.passthru.allGrammars;
    };
    treesitter-context.enable = true;
    treesitter-textobjects = {
      enable = true;
      select = {
        enable = true;
        keymaps = {
          "af" = "@function.outer";
          "if" = "@function.inner";
        };
      };
    };
  };
}
