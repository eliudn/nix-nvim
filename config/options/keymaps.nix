{
  keymaps = [
    {
      mode = "i";
      key = "<C-h>";
      action = "<Left>";
      options = {
        silent = true;
      };
    }
    {
      mode = "i";
      key = "<C-j>";
      action = "<Down>";
      options = {
        silent = true;
      };
    }
    {
      mode = "i";
      action = "<Up>";
      key = "<C-k>";
      options = {
        silent = true;
      };
    }
    {
      mode = "i";
      action = "<Right>";
      key = "<C-l>";
      options = {
        silent = true;
      };
    }

    {
      mode = "n";
      action = "<cmd>w<CR>";
      key = "<leader>w";
      options = {
        silent = true;
      };
    }

    {
      mode = "n";
      action = "<cmd>q<CR>";
      key = "<leader>q";
      options = {
        silent = true;
      };
    }
    {
      mode = "n";
      action = "<cmd>hide<CR>";
      key = "<leader>H";
      options = {
        silent = true;
      };
    }
    {
      mode = "t";
      action = "<c-\\><c-n>";
      key = "<esc>";
      options = {
        silent = true;
      };
    }
  ];

  extraConfigLua = ''
    vim.api.nvim_set_keymap('i', '.', '.<C-g>u', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('i', '!', '!<C-g>u', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('i', '?', '?<C-g>u', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('i', ',', ',<C-g>u', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('i', '<Space>', '<Space><C-g>u', {noremap = true, silent = true})
    vim.api.nvim_set_keymap('i', '<CR>', '<CR><C-g>u', {noremap = true, silent = true})
  '';
}
