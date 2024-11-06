{ self, ... }:
{
  opts = {
    number = true;
    relativenumber = true;
    # Always show the signcolumn, otherwise text would be shifted when displaying error icons
    signcolumn = "yes";
    numberwidth = 2;

    # Search
    ignorecase = true;
    smartcase = true;

    # Tab defaults (might get overwritten by an LSP server)
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;

    # System clipboard support, needs xclip/wl-clipboard
    clipboard = "unnamedplus";

    # Highlight the current line
    cursorline = true;

    # Show line and column when searching
    ruler = true;
    splitbelow = true;
    splitright = true;
    # Global substitution by default
    gdefault = true;

    # Start scrolling when the cursor is X lines away from the top/bottom
    scrolloff = 5;

    undofile = true;
    undolevels = 10000;

    # ttimeoutlen = 100;
  };
  globals.mapleader = " ";
  globals.maplocalleader = "+";
}
