return {
  "karb94/neoscroll.nvim",
  lazy = false,
  config = function ()
    require('neoscroll').setup {}
    local t = {}
    t['<PageUp>'] = {'scroll', {'-vim.wo.scroll', 'true', '250'}}
    t['<PageDown>'] = {'scroll', {'vim.wo.scroll', 'true', '250'}}
    require('neoscroll.config').set_mappings(t)
  end
}
