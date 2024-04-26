return {
  'rcarriga/nvim-notify',
  config = function()
    if not vim.g.vscode then
      local notify = require 'notify'
      notify.setup()
      vim.notify = notify
    end
  end,
}
