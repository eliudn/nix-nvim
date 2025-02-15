{ pkgs, inputs, ... }:
{
  plugins = {
    lsp.servers = {
      html.enable = true;
      cssls = {
        enable = true;
        extraOptions = {
          capabilities = {
            textDocument = {
              completion = {
                completionItem = {
                  snippetSupport = true;
                };
              };
            };
          };
        };
      };
      emmet_ls = {
        enable = true;

        filetypes = [
          "css"
          "html"
        ];
      };
    };
  };
}
