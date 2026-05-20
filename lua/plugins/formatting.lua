return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        c   = { "clang_format" },
        cpp = { "clang_format" },
        -- Override lang.markdown's default (prettier) with mdformat.
        -- mdformat-gfm adds GitHub-flavoured markdown support: pip install mdformat-gfm
        markdown         = { "mdformat", "markdownlint-cli2", "markdown-toc" },
        ["markdown.mdx"] = { "mdformat", "markdownlint-cli2", "markdown-toc" },
      },
    },
  },
}
