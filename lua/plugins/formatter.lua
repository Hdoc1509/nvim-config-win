local prettier = require('formatter.defaults.prettier')
local utils = require('utils')
local nmap = utils.nmap
local map_notify = utils.map_notify

require('formatter').setup({
  filetype = {
    css = { prettier('css') },
    html = { prettier('html') },
    javascript = { prettier },
    javascriptreact = { prettier },
    json = { prettier('json') },
    jsonc = { prettier },
    lua = { require('formatter.filetypes.lua').stylua },
    markdown = { prettier('markdown') },
    sh = { require('formatter.filetypes.sh').shfmt },
    scss = { prettier('scss') },
    typescript = { prettier('typescript') },
    typescriptreact = { prettier('typescript') },
    yaml = { prettier('yaml') },
  },
})

nmap('<Leader>f', function()
  map_notify('Formatting...')
  vim.cmd('Format')
end)

nmap('<Leader>F', function()
  map_notify('Formatting and writing...')
  vim.cmd('FormatWrite')
end)
