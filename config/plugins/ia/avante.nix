{pkgs, ...}:
{
  extraPlugins = [
    pkgs.vimPlugins.avante-nvim
  ];

  extraConfigLua = ''
    require'avante'.setup({
      provider = "claude",
    })
  '';
}
