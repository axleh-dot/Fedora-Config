return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
  "nvim-tree/nvim-tree.lua",
  opts = {
    view = {
      width = 25,
      },
    },
  },
   "nvim-lua/plenary.nvim",

  {
   "nvchad/ui",
    config = function()
      require "nvchad" 
    end
  },

  {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      debounce = 100,
      indent = {
        char = "╎",
        highlight = { "Function", "Label"},
        priority = 2,
      },
      whitespace = {
        highlight = { "Function", "Label" },
        remove_blankline_trail = true,
      },
      scope = { exclude = { language = { "lua" } } },
      
    },
  },

  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      image = {
        -- your image configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    },
  },

  "nvzone/volt", -- optional, needed for theme switcher
  
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"
    },
  },

  {
    'Mathijs-Bakker/godotdev.nvim',
    dependencies = {
      'nvim-dap', 'nvim-dap-ui', 'nvim-treesitter' 
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  --{
  --  "nvim-treesitter/nvim-treesitter",
  --  opts = {
  --    ensure_installed = { "html", "css", "bash", "python", "lua" },
  --    indent = {
  --      enable = true, -- ESTA ES LA LÍNEA CLAVE
  --    },
  --  },
  --},
}
