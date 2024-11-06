{
  plugins = {
    lsp.servers = {
      ts_ls = {
        enable = true;
      };
      volar = {
        enable = true;
      };
      emmet_ls.filetypes = [ "vue" ];
    };
  };
}
