{pkgs,...}:
{
colorschemes.nord.enable = true;
extraPackages = [pkgs.fd];
imports =  [
    ./plugins
    ./options
  ];

}
