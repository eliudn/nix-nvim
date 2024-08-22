{
  plugins.neorg = {
    enable = false;
  };
  
  
}
/**
    modules = {
      "core.defaults" = {};
      "core.ui" = {};
      "core.concealer" = {};
      "core.pivot" = {};
      "core.dirman" = {
        config = {
          workspaces = {
            notes = "~/notes";
          };
          default_workspace = "notes";
        };
      };
    };



  keymaps = [
    {
      mode = "n";
      key = "<leader>ne";
      action ="<cmd>Neorg<CR>";
      options = { silent = true;};
    }
    {
      mode = "n";
      key = "<localleader>fn";
      action ="<cmd>Telescope find_files cwd=~/notes/<CR>";
      options = { silent = true;};
    }
    {
      mode = "n";
      key = "<leader>nn";
      action ="<Plug>(neorg.dirman.new-note)";
      options = { silent = true;};
    }

    {
      mode = "n";
      key = "<leader>nt";
      action ="<Plug>(neorg.pivot.list.toggle)";
      options = { silent = true;};
      }
    ];
      */
