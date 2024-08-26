_:
{
  plugins.luasnip = {
    enable = true;

    settings = {
      history = true;
      updateevents = "TextChanged,TextChangedI";
      enable_autosnippets = true;
    };

    fromLua = [ { } ];
  };

}
