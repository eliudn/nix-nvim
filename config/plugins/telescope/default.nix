{ pkgs, ... }:
{
  imports = [ ./extensions ];
  extraPackages = [
    pkgs.fd
    pkgs.ripgrep
  ];
  plugins.web-devicons.enable = true;
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      media-files = {
        enable = true;
        settings.filetypes = [
          "png"
          "jpg"
          "gif"
          "mp4"
          "webm"
          "pdf"
        ];
        settings.find_cmd = "rg";
        dependencies = {
          chafa.enable = true;
          ffmpegthumbnailer.enable = true;
          imageMagick.enable = true;
          fontpreview.enable = true;
          
        };
      }; # end media-files
      file-browser = {
        enable = true;
      };
    }; # end extensions
    keymaps = {
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Telescope get files";
        };
      };
      "<leader>lg" = {
        action = "live_grep";
        options = {
          desc = "Telescope live grep";
        };
      };
      "<leader>tf" = {
        action = "frecency workspace=CWD";
        options = {
          desc = " Telescope frecency ";
        };
      };

      "<leader>tb" = {
        action = "buffers";
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
        action = "find_files follow=true";
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
      
      "<leader>fgc" = {
        action = "git_commits";
        options = {
          desc = "Telescope git commits";
        };
      };
      "<leader>fgs" = {
        action = "git_status";
        options = {
          desc = "Telescope git status";
        };
      };

      "<leader>ffb" = {
        action = "file_browser hidden=true no_ignore=true";
        options = {
          desc = "Telescope file browser";
        };
      };
    };
  };
  keymaps = [
    {
      action = ":lua require('telescope.builtin').find_files({ cwd = vim.fn.expand('%:p:h') })<CR>";
      key = "<Leader>fa";
      options = {
        desc = "Telescope abrir es la ubicacion del archivo";
      };
    }
  ];

}
