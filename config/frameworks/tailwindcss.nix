{
  plugins.lsp.servers.tailwindcss = {
    enable = true;
    filetypes = ["html"];
    extraOptions.handlers = {
      "textDocument/hover".__raw = ''
        vim.lsp.with(vim.lsp.handlers.hover, {silent = true})
      '';
    };
  };
}
