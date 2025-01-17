return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  { import = "astrocommunity.colorscheme.monokai-pro-nvim" },
  { import = "astrocommunity.colorscheme.everforest" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  --  { import = "astrocommunity.completion.copilot-lua-cmp" },
  --  This plugin allow to move lines of code with <A-h> <A-j>
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.pack.dart" },
  -- Configure flutter-tools
  { "akinsho/flutter-tools.nvim",
    opts = {
      lsp  = {
            settings = {
                lineLength = 120
            }
      }
    }
  }
}
