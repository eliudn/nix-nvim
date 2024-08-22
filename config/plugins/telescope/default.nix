{pkgs, ...}:
{
      imports = [
        ./extensions
      ];
  extraPackages = [
    pkgs.fd
    pkgs.ripgrep
  ];
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
    };
    keymaps = {
      "C-p" = {
        action = "git_files";
        options = {
          desc = "Telescope get files";
        };
      };
      "<leader>tf" = {
        action = "frecency workspace=CWD";
        options = {
          desc = " Telescope frecency ";
        };
      };

      "<leader>Tf" = {
        action = "frecency";
        options = {
          desc = " Telescope frecency ";
        };
      };

      "<leader>ff" = {
        action = "find_files follow=true no_ignore=true";
        options = {
          desc = " Telescope find files";
        };
      };

      "<leader>fz" = {
        action = "current_buffer_fuzzy_find";
        options = {
          desc = " Telescope find in corruent  buffer ";
        };
      };


      "<leader>fh" = {
        action = "help_tags";
        options = {
          desc = " Telescope Help page";
        };
      };

      "<leader>fk" = {
        action = "keymaps";
        options = {
        desc = "Telescope keymaps";
      };
      };
    };
  };

}
