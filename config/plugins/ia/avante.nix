{pkgs, ...}:
{
  extraPlugins = [
    pkgs.vimPlugins.avante-nvim
  ];

  extraConfigLua = ''
    require('avante_lib').load()
    require('avante').setup({
      provider = "claude",
      auto_suggentions_provider = "claude",
      claude = {
        endpoint = "https://api.anthropic.com",
        model = "claude-3-5-sonnet-20240620",
        temperature = 0,
        max_tokens = 4096,
      }
    })
  '';
}
