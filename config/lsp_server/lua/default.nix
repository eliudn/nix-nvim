{pkgs,...}:
{
  extraPlugins = with pkgs.vimPlugins; [ lazydev-nvim ];

  extraConfigLuaPre = ''
    require('lazydev').setup({})
  '';


  plugins = {
    lsp.servers.lua_ls.enable = true;
    none-ls.sources = {
      formatting.stylua.enable = true;
      diagnostics.selene.enable = true;
    };

    cmp.settings.sources = [
      {
        name = "lazydev";
        group_index = 0;
      }
    ];
  };

  files = {
    "ftplugin/lua.lua" = {
      opts = {
        tabstop = 2;
        softtabstop = 2;
        expandtab = true;
        shiftwidth = 2;
      };
    };
  };
}
