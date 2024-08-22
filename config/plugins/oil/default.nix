{
  plugins.oil = {
    enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "-";
      options.desc = "Open parent directionry";
      action = "<cmd>Oil<CR>";
    }
    {
      mode = "n";
      key = "<leader>-";
      options.desc = "Open parent directionry";
      action = "<cmd>Oil --float<CR>";
    }
  ];
}
