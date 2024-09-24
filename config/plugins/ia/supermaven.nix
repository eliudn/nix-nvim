{pkgs,...}:{
  extraPlugins = [
    pkgs.vimPlugins.supermaven-nvim
  ];

  extraConfigLua = ''
      require('supermaven-nvim').setup({})
    '';
}
