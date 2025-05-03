return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      ensure_installed = {
        'vim',
        'vimdoc',

        'markdown',
        'latex',

        'lua',
        'c',
        'cpp',
        'go',
        'rust',
        'python',

        'typescript',
        'javascript',
        'tsx',
      },
      sync_install = false,
      highlight = {
        enable = true,
        disable = { 'latex' },
      },
      indent = { enable = true },
    }
  end,
}
