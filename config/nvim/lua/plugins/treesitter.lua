-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "astro",
      "bash",
      "c",
      "cmake",
      "cpp",
      "css",
      "dockerfile",
      "go",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "kdl",
      "kotlin",
      "lua",
      "make",
      "python",
      "qmldir",
      "qmljs",
      "rust",
      "slint",
      "tsx",
      "typescript",
      "vim",
      "xml",
      "yaml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
