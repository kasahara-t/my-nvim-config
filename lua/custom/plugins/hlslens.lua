return {
  'kevinhwang91/nvim-hlslens',
  dependencies = {
    'petertriho/nvim-scrollbar',
  },
  config = function()
    if not vim.g.vscode then
      require('scrollbar.handlers.search').setup()
    else
      local hlslens = require 'hlslens'
      hlslens.setup()
    end
  end,
}
