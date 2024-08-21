{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "C-p" = {
        action = "git_files";
        options = {
          desc = "Telescope get files";
        };
      };
    };
  };

  imports = [
  ./extensions
  ];
}
