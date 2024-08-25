{ pkgs, lib, ... }:
{
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
                languages = [ "vue" ];
              }
            ];
          };
        };
      };
      volar = {
        enable = true;
        package = pkgs.vue-language-server;
      };
    };
    # cmp.settings = {
    #   formatting.format = ''
    #     function(entry, vim_item)
    #         if vim_item.abbr:match('^@/') then
    #           vim_item.menu = '[Path]'
    #         end
    #         return vim_item
    #     end
    #   '';
    # };
  };
}
