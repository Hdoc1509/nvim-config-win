local utils = require('utils')

local map_notify = utils.map_notify
local nmap = utils.nmap
local cmd = vim.cmd

-- Edit config file
nmap('<Leader>sv', function()
  map_notify('Sourcing $MYVIMRC file...')
  cmd('source $MYVIMRC')
end)

nmap('<Leader>sf', function()
  map_notify('Sourcing current file...')
  cmd('source %')
end)

-- Copy to clipboard all text
nmap('<Leader>ya', function()
  cmd('%yank')
end)

-- MarkdownPreview
nmap('<Leader>mp', function()
  map_notify('Opening Markdown preview...')
  cmd('MarkdownPreview')
end)

nmap('<Leader>mps', function()
  cmd('MarkdownPreviewStop')
  map_notify('Closed Markdown preview')
end)

-- Formatter
nmap('<Leader>f', function()
  map_notify('Formatting...')
  cmd('Format')
end)

nmap('<Leader>fw', function()
  map_notify('Formatting and writing...')
  cmd('FormatWrite')
end)

-- Nvim-ufo
nmap('zR', require('ufo').openAllFolds)

nmap('zM', require('ufo').closeAllFolds)
