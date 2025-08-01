-- Bootstrap lazy.nvim if needed
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/plenary.nvim",

  -- Appearance
  "folke/tokyonight.nvim",

  -- LSP & Tools
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

  -- Autocompletion
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",

  -- Formatting and linting
  {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.flake8,
      },
    })
  end,
},

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Debugging
  "mfussenegger/nvim-dap",
  --  Git integration
  {
  "lewis6991/gitsigns.nvim",
  event = "BufReadPre",
  config = function()
    require("gitsigns").setup({
      current_line_blame = true,  -- Inline blame
      current_line_blame_opts = {
        delay = 300,
        virt_text_pos = 'eol',
      },
    })
  end,
  },

 -- The colorful statusline with python, utf-8, and position indicators matches lualine.
 -- Highly configurable and popular for aesthetics.
 {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = { theme = "auto" }
    })
  end,
},

-- Shows those vertical dotted indent lines.
{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    require("ibl").setup()
  end,
},


{ "nvim-tree/nvim-web-devicons", lazy = true },

-- for icons completions
{
  "onsails/lspkind.nvim",
  config = function()
    require("cmp").setup {
      formatting = {
        format = require("lspkind").cmp_format({ mode = "symbol_text" })
      }
    }
  end,
},
{ "onsails/lspkind.nvim" },



})

