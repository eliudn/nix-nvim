{ lib, ... }:
{
  # obsidian
  extraConfigLua = ''
    vim.opt_local.conceallevel = 2;
  '';
  plugins = {
    obsidian = {
      enable = true;
      settings = {
        completion = {
          min_chars = 2;
          nvim_cmp = true;
        };
        new_notes_location = "notes_subdir";
        notes_subdir = "Intersticio";
        workspaces = [
          {
            name = "leuamzNotes";
            path = "~/obsidian/personal/work";
          }
        ];
        daily_notes = {
          template = "note";
        };
        ui = {
          enable = true;
        };
        mappings = {

          "<leader>od" = {
            action = "require('obsidian').util.toggle_checkbox";
            opts = {
              buffer = true;
            };
          };
        };
        note_frontmatter_func = ''
          function(note)
            local out = {id = note.id, aliases = note.aliases, tags= note.tags}

            if note.metadata ~= nil and  not vim.tbl_isempty(note.metadata) then
              for k, v in pairs(note.metadata) do
                out[k] = v
              end
            end
            return out
          end
        '';
        note_id_func = ''
          function(title)
            local suffix = ""
            if title ~= nil then
              suffix = title:gsub(" ","-"):gsub("[^A-Za-z0-9-]",""):lower()
            else
              for _ = 1,4 do
                suffix = suffix .. string.chart(math.random(65,90))
              end
            end
            return tostring(os.time()) .. "-" .. suffix
          end
        '';
        templates = {
          date_format = "%Y-%m-%d-%a";
          subdir = "templates";
          time_format = "%H:%M";
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
        "<leader>of" = "<cmd>ObsidianQuickSwitch<cr>";
        "<leader>on" = "<cmd>ObsidianNew<cr>";
        "<leader>otn" = "<cmd>ObsidianNewFromTemplate<cr>";
        "<leader>os" = "<cmd>ObsidianSearch<cr>";
      };
}
