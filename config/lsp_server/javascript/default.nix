{
  plugins = {
    lsp.servers = {
      ts-ls = {
        enable = true;
      };
      volar = {
        enable = true;
      };
      emmet-ls.filetypes = [ "vue" ];
    };
  };
}
