{pkgs,...}:
{
colorschemes.nord.enable = true;
extraPackages = [pkgs.fd];
globals.mapleader = " ";
imports =  [
  ./lsp
  ./telescope
  ];

}
