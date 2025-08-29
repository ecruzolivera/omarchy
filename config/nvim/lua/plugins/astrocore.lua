-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        -- undofile = true,
        autoread = true,
        backup = false,
        clipboard = "unnamedplus",
        colorcolumn = "120",
        expandtab = true,
        incsearch = true,
        nu = true,
        number = true, -- sets vim.opt.number
        relativenumber = true, -- sets vim.opt.relativenumber
        scrolloff = 8,
        shiftwidth = 4,
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        smartindent = true,
        softtabstop = 4,
        spell = false, -- sets vim.opt.spell
        spellfile = vim.fn.expand "$HOME/.config/spell.eco/en.utf-8.add",
        swapfile = false,
        tabstop = 4,
        termguicolors = true,
        undodir = "/tmp/undodir",
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- quick save
        ["<C-s>"] = { ":w!<cr>", desc = "Save File" },
        [";"] = { ":", desc = "Easy colon" },

        -- Buffers
        ["<Leader>b"] = { desc = "Buffers" },
        ["<Leader>bv"] = { vim.cmd.vsplit, desc = "Vertical split buffer from tabline" },
        ["<Leader>bh"] = { vim.cmd.split, desc = "Horizontal split buffer from tabline" },
        -- -- navigate buffer tabs
        -- ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        -- ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        -- -- mappings seen under group name "Buffer"
        -- ["<Leader>bd"] = {
        --   function()
        --     require("astroui.status.heirline").buffer_picker(
        --       function(bufnr) require("astrocore.buffer").close(bufnr) end
        --     )
        --   end,
        --   desc = "Close buffer from tabline",
        -- },
        -- ["<leader>q"] = {
        --   function() require("astrocore.buffer").close() end,
        -- },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
