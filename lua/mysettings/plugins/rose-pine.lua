return {
  -- Theme inspired by Atom
  'rose-pine/neovim',
  priority = 1000,
  config = function()
    require('rose-pine').setup({
      disable_background = true,
      extend_background_behind_borders = true,
      styles = {
              transparency = true
          },
      })
    vim.cmd.colorscheme 'rose-pine-main'
  end,
}
