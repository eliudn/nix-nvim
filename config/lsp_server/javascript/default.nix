{ pkgs, lib, ... }:
{
  extraPackages = [ pkgs.nodePackages.typescript ];
  plugins = {
    lsp.servers = {
      tsserver = {
        enable = true;
        filetypes = [
          "typescript"
          "javascript"
          "javascriptreact"
          "typescriptreact"
          "vue"
        ];
        extraOptions = {
          init_options = {
            plugins = [
              {
                name = "@vue/typescript-plugin";
                location = "${lib.getBin pkgs.vue-language-server}/lib/node_modules/@vue/language-server";
                languages = [
                  "typescript"
                  "vue"
                ];
              }
            ];

          };
        };
      };
      volar = {
        enable = true;
        package = pkgs.vue-language-server;
        filetypes = [
          "typescript"
          "javascript"
          "javascriptreact"
          "typescriptreact"
          "vue"
        ];
        # extraOptions = {
        #   init_options = {
        #     vue = {
        #       hybridMode = false;
        #     };
        #   };
        # };
      };
      emmet-ls.filetypes = [ "vue" ];
    };
  };
}
