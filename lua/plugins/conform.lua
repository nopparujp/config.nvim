return {
  'stevearc/conform.nvim',
  opts = {
    format_on_save = function(bufnr)
      local disable_filetypes = {}
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      cpp = { 'clang_format' },

      -- run multiple formatters sequentially
      python = { 'isort', 'black' },

      -- run only the first available formatter
      javascript = { { 'prettierd', 'prettier' } },
      typescript = { { 'prettierd', 'prettier' } },
    },
  },
}
