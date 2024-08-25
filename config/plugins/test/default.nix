{
  plugins.neotest = {
    enable = true;
    adapters = {
      phpunit.enable = true;
    };
  };

  keymaps = [
    {
      actions = "<cmd>lua require('neotest').run.run()<CR>";
      key = "<Leader>mr";
      options.silent = true;
    }
    {
      actions = "<cmd>lua require('neotest').run.stop()<CR>";
      key = "<Leader>ms";
      options.silent = true;
    }
    {
      actions = "<cmd>lua require('neotest').output.open()<CR>";
      key = "<Leader>mo";
      options.silent = true;
    }
    {
      actions = "<cmd>lua require('neotest').output.open({ entre = true })<CR>";
      key = "<Leader>mO";
      options.silent = true;
    }
    {
      actions = "<cmd>lua require('neotest').summary.toggle()<CR>";
      key = "<Leader>mi";
      options.silent = true;
    }

    {
      actions = "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>";
      key = "<Leader>mf";
      options.silent = true;
    }
  ];
}
