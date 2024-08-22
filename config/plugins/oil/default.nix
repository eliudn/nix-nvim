{
  plugins.oil = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "-";
      options.desc = "Open parent directionry";
      action = "<cmd>oil<CR>";
    }
    {
      mode = "n";
      key = "<leader>-";
      options.desc = "Open parent directionry";
      action = "<cmd>oil --float<CR>";
    }
  ];
}
