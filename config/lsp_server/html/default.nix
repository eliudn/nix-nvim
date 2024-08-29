{
  pkgs,
  inputs,
  ...
}:
{
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin{
      name = "css-variables";
      src = inputs.plugin-cmp-css-variables;
    })
  ];
  plugins = {
    lsp.servers = {
      html.enable = true;
      cssls.enable = true;
      emmet-ls = {
        enable = true;
        filetypes = [ 
          "css"
          "html"
        ];
      };
    };
    cmp.settings.sources = [{name = "css-variables";}];
  };
}
