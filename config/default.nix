{pkgs,...}:
{
colorschemes.nord.enable = true;
extraPackages = [pkgs.fd];
globals.mapleader = " ";
imports =  [
  ./plugins
  ./lsp
  ./telescope
  ];

}
