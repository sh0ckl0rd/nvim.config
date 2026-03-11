local treesitter = require("nvim-treesitter")

treesitter.setup({
        auto_install = true,
})

treesitter.install({
  "bash",
  "c",
  "cpp",
  "css",
  "go",
  "html",
  "javascript",
  "json",
  "lua",
  "markdown",
  "python",
  "rust",
  "svelte",
  "typescript",
  "vim",
  "vimdoc",
  "vue",
})

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local lang = vim.treesitter.language.get_lang(args.match)
    if lang then
      pcall(vim.treesitter.start, args.buf, lang)
    end
  end,
})
