{
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = false;
      settings = {
        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
              ['<C-b>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4),
              ['<C-Space>'] = cmp.mapping.complete(),
              ['<C-e>'] = cmp.mapping.abort(),
            ["<C-n>"] = cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif luasnip.choice_active() then
                luasnip.change_choice(1)
              else
                fallback()
              end
            end, { "i", "s" }),
            ["<C-p>"] = cmp.mapping.select_prev_item(),
            ["<C-y>"] = cmp.mapping.confirm {
              behavior = cmp.ConfirmBehavior.Insert,
              select = true,
            },
            })
          '';
        };
        completion.completeopt = "menu,menuone,noselect";
        snippet.expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
        formatting = {
          expandable_indicator = true;
          fields = [
            "abbr"
            "kind"
            "menu"
          ];
        };
        sources = {
          __raw = ''
            cmp.config.sources({
              { name = 'nvim_lsp' },
              { name = 'vsnip' },
              { name = 'luasnip' },
              { name = 'ultisnips' },
              { name = 'snippy' },
            }, {
              { name = 'buffer' },
              { name = 'path'},
            })
          '';
        };
      };
    };

    luasnip = {
      enable = true;

    };

    cmp-async-path.enable = true;
    cmp-buffer.enable = true;
    cmp-calc.enable = true;
    cmp-cmdline.enable = true;
    cmp-cmdline-history.enable = true;
    cmp-dap.enable = true;
    cmp-fuzzy-buffer.enable = true;
    cmp-fuzzy-path.enable = true;
    cmp-git.enable = true;
    cmp-latex-symbols.enable = false;
    cmp-npm.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-document-symbol.enable = true;
    cmp-nvim-lua.enable = true;
    cmp-nvim-ultisnips.enable = true;
    cmp-rg.enable = true;
    cmp-vsnip.enable = true;
    cmp_luasnip.enable = true;
    cmp_yanky.enable = true;
    cmp-path.enable = true;
  };

  extraConfigLua = ''
      local cmp = require("cmp")
       cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
      }, {
        { name = 'buffer' },
      })
    })

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      })
    })

  '';

}
