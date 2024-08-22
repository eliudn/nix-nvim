{
  plugins.fidget.enable = true;
  plugins.lsp = {
    enable = true;
    keymaps.lspBuf = {
      K = "hover";
      gD = "references";
      gd = "definition";
      gi = "implementation";
      gT = "type_definition";
      "<leader>rn" = "rename";
      
    };

    onAttach = ''
      vim.keymap.set('n', '<leader>lff', function()
        vim.lsp.buf.format({async = true})
      end)

      vim.keymap.set('i', '<c-t>', function()
        vim.lsp.buf.signature_help()
      end)

      vim.keymap.set({'v','n'}, '<leader>ca', vim.lsp.buf.code_action)
    '';
    servers.nixd.enable = true;
  };
  extraConfigLua = ''
     vim.lsp.inlay_hint.enable()

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " "}
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = ""})
    end
  '';
}
