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
        softtabstop = 4;
        expandtab = true;
        shiftwidth = 4;
      };
    };
  };
}
