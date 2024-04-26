-- File: lua/custom/plugins/filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    if not vim.g.vscode then
      require('neo-tree').setup {
        source_selector = {
          winbar = true,
        },
        filesystem = {
          filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_by_name = {
              -- '.DS_Store',
              -- 'thumbs.db',
            },
            never_show = { '.git' },
          },
        },
      }
    end
  end,
}
