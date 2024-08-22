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
      mode = "t";
      action = "<cmd> <esc> <CR>";
      key = "<c-\\><c-n>";
      options = {
        silent = true;
      };
    }
  ];
   
}
