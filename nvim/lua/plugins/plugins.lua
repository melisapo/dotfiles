return {

-- THEME
{
 "catppuccin/nvim",
 name = "catppuccin",
 priority = 1000,
 config = function()

  require("catppuccin").setup({
   flavour = "mocha",
   transparent_background = true,

   integrations = {
    telescope = true,
    nvimtree = true,
    bufferline = true,
    gitsigns = true,
    which_key = true,
    indent_blankline = { enabled = true },
   }
  })

  vim.cmd.colorscheme("catppuccin")

 end
},

-- STATUSLINE
{
 "nvim-lualine/lualine.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 config = function()
  require("lualine").setup({
   options = { theme = "catppuccin" }
  })
 end
},

-- BUFFER TABS
{
 "akinsho/bufferline.nvim",
 version = "*",
 dependencies = "nvim-tree/nvim-web-devicons",
 config = function()
  require("bufferline").setup()
 end
},

-- FILE EXPLORER
{
 "nvim-tree/nvim-tree.lua",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 config = function()
  require("nvim-tree").setup()
 end
},

-- WHICH KEY
{
 "folke/which-key.nvim",
 config = function()
  require("which-key").setup()
 end
},

-- TELESCOPE
{
 "nvim-telescope/telescope.nvim",
 dependencies = {
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope-ui-select.nvim"
 },
 config = function()

  local telescope = require("telescope")

  telescope.setup({
   defaults = {
    layout_strategy = "horizontal",
    layout_config = {
     width = 0.9,
     height = 0.85,
    },
   }
  })

  telescope.load_extension("ui-select")

 end
},

-- TREESITTER
{
 "nvim-treesitter/nvim-treesitter",
 build = ":TSUpdate",
 event = { "BufReadPost", "BufNewFile" },
 config = function()

  require("nvim-treesitter.configs").setup({
   ensure_installed = {
    "go",
    "lua",
    "javascript",
    "typescript",
    "python"
   },

   highlight = { enable = true },
   indent = { enable = true },

  })

 end
},

-- INDENT GUIDES
{
 "lukas-reineke/indent-blankline.nvim",
 main = "ibl",
 config = function()

  require("ibl").setup({
   indent = { char = "│" },
   scope = { enabled = false },
  })

 end
},

-- AUTOPAIRS
{
 "windwp/nvim-autopairs",
 event = "InsertEnter",
 config = function()
  require("nvim-autopairs").setup()
 end
},

-- COMMENTS
{
 "numToStr/Comment.nvim",
 config = function()
  require("Comment").setup()
 end
},

-- GIT
{
 "lewis6991/gitsigns.nvim",
 config = function()
  require("gitsigns").setup()
 end
},

-- DASHBOARD
{
 "goolord/alpha-nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 config = function()

  local alpha = require("alpha")
  local dashboard = require("alpha.themes.dashboard")

  dashboard.section.header.val = {
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠄⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠎⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠃⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⡹⠁⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠔⡵⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⠠⢂⠜⠀⠀⠀⠀⠀⠀⣀⠔⠂",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢀⡴⢁⠎⠀⠀⠀⠀⣀⠴⠊⠁⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣄⠀⠀⠀⠀⠀⠀⠤⣠⠄⠤⠐⡷⠋⣡⣊⣤⣶⠅⡶⠛⠁⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢗⡄⠀⠀⠀⠀⠀⠀⢀⡰⠈⠷⡢⡀⠀⢀⡀⠔⠈⠀⢠⠖⣤⡴⠇⠀⣇⠤⠊⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠁⠢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⣼⠀⢛⢢⡀⠀⠀⣀⣤⠎⠀⠀⠀⠈⢪⡁⣿⠛⠀⠀⠀⠈⡦⠈⠀⡠⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠈⠳⢤⡀⡀⠀⠀⠀⠀⠀⠀⠀⠳⣄⠀⠀⢸⠀⠀⠀⠀⠀⢠⠇⠀⠸⠂⢰⢄⡙⣹⠁⠀⠀⠀⠀⣀⠜⠁⡰⠊⠈⠑⢆⠀⠀⠔⢀⡤⠤⠤⠤⠀⠒⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠉⠐⠥⡐⠢⢀⡀⠀⠀⠀⢉⠐⡄⠈⢇⠀⠀⠀⢠⢋⣀⡔⠁⠀⠀⠸⠿⠀⠁⠀⠀⠀⠈⠀⣀⠐⠇⡐⡂⢐⠚⠒⠀⠈⠁⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣵⠤⠀⠉⡒⡶⠤⣥⠈⠚⠀⠉⠃⠚⠁⣠⢼⡇⠀⠀⠀⠀⠀⠄⠒⠉⠀⢱⢈⡿⠒⠃⠢⡀⢳⢀⣬⣶⣴⠠⠄⠐⠒⠚⠊⠉⠉⠉⠉⠉⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠐⠣⠟⡀⠀⠠⢲⢷⣀⢤⠐⠒⠛⠂⡶⢠⢆⣀⠀⠀⡀⠀⢠⡖⠁⠁⠀⠀⠀⠀⠉⢪⣿⡿⡣⡙⢍⠉⠓⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡔⢁⠄⠒⠒⢢⠑⡠⡝⠂⠤⠮⠤⠬⠙⠚⠀⠀⠈⣩⠉⣉⡗⠚⠛⠛⠉⠁⠀⠀⢱⠗⠲⣌⢎⢢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠋⠁⠀⠀⠀⠀⢰⠈⠙⠤⣄⠀⠀⠀⠀⠀⣜⣠⣾⣋⣄⡞⠀⠉⠉⠉⠉⠀⠀⠀⢸⠀⠀⠀⠑⠑⢵⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠊⠀⠀⠀⠀⠀⠀⠀⠀⣸⠀⠀⠀⠈⠁⠀⠀⢀⡼⠋⠸⣸⠿⡉⠙⡄⠀⠀⠀⠀⠀⠀⠀⡼⠀⠀⠀⠀⠀⠀⠙⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠠⠞⠀⠀⠀⢻⠀⠘⢆⠣⡀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⠀⠑⢝⡄⠀⠀⠀⠀⡸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡄⠀⠀⠀⠀⠀⠀⠙⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
  "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
  }

  vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#f5c2e7" })
  dashboard.section.header.opts.hl = "AlphaHeader"

  dashboard.section.buttons.val = {
   dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
   dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
   dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
   dashboard.button("q", "  Quit", ":qa<CR>"),
  }

  alpha.setup(dashboard.opts)

 end
},

-- MASON
{
 "williamboman/mason.nvim",
 config = function()
  require("mason").setup()
 end
},

-- MASON LSP
{
 "williamboman/mason-lspconfig.nvim",
 dependencies = {
  "williamboman/mason.nvim",
  "neovim/nvim-lspconfig",
 },
 config = function()

  require("mason").setup()

  require("mason-lspconfig").setup({
   ensure_installed = {
    "lua_ls",
    "gopls",
    "ts_ls",
    "pyright",
   },
  })

  local lspconfig = require("lspconfig")

  lspconfig.lua_ls.setup({})
  lspconfig.gopls.setup({})
  lspconfig.ts_ls.setup({})
  lspconfig.pyright.setup({})

 end
},

-- AUTOCOMPLETE
{
 "hrsh7th/nvim-cmp",
 dependencies = {
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip"
 },
 config = function()

  local cmp = require("cmp")

  cmp.setup({

   snippet = {
    expand = function(args)
     require("luasnip").lsp_expand(args.body)
    end,
   },

   mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
   }),

   sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
   }

  })

 end
},

-- GO SUPPORT
{
 "ray-x/go.nvim",
 dependencies = {
  "ray-x/guihua.lua",
  "neovim/nvim-lspconfig"
 },
 ft = { "go", "gomod" },
 config = function()
  require("go").setup()
 end
},

-- DEBUGGER
{
 "mfussenegger/nvim-dap"
},

-- NOTIFICATIONS
{
 "rcarriga/nvim-notify",
 config = function()

  vim.notify = require("notify")

  require("notify").setup({
    background_colour = "#000000",
   stages = "fade",
  })

 end
},

-- NOICE
{
 "folke/noice.nvim",
 dependencies = {
  "MunifTanjim/nui.nvim",
  "rcarriga/nvim-notify"
 },
 config = function()

  require("noice").setup({
   lsp = {
    progress = { enabled = true },
    hover = { enabled = true },
   },
  })

 end
},

-- SMOOTH SCROLL
{
 "karb94/neoscroll.nvim",
 config = function()
  require("neoscroll").setup()
 end
}
}
