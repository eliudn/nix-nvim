{
  plugins.lsp = {
    enable = true;
    servers.nixd.enable = true;
  };
  extraConfigLua = ''
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " "}
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
    end
  '';
}
