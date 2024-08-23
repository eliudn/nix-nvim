{ pkqs, inputs, ... }:
let
  ultimate-autopairs = pkqs.vimUtils.buildVimPlugin {
    name = "ultimate-autopairs";
    src = inputs.plugin-ultimate-autopairs;
  };
in
{
  extraPlugins = [ ultimate-autopairs ];
  extraConfiglua = ''
    require ( 'ultimate-autopair').setup({cmap = false})
  '';
}
