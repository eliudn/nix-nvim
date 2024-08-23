{pkgs,...}:
{
  extraPackages = [
    pkgs.php83
    pkgs.php83Packages.composer
  ];

  plugins.lsp.servers.phpactor = {
    enable = true;
  };

  files = {
    "ftplugin/php.lua" = {
      opts = {
        tabstop = 4;
        softtabtop = 4;
        expantab = true;
        shiftwidth = 4;
      };
    };
  };
}
