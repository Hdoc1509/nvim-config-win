local config = function()
  local gitsigns = require('gitsigns')
  local utils = require('utils')
  local nmap = utils.nmap
  local merge = utils.merge
  local keymap = utils.keymap

  gitsigns.setup({
    on_attach = function(bufnr)
      local buf_nmap = function(lhs, rhs, opts)
        nmap(lhs, rhs, merge({ buffer = bufnr }, opts or {}))
      end

      local buf_keymap = function(mode, lhs, rhs, opts)
        keymap(mode, lhs, rhs, merge({ buffer = bufnr }, opts or {}))
      end

      buf_nmap(']c', function()
        gitsigns.nav_hunk('next')
      end, { desc = 'Jump to next hunk' })

      buf_nmap('[c', function()
        gitsigns.nav_hunk('prev')
      end, { desc = 'Jump to previous hunk' })

      buf_nmap('<Leader>hs', gitsigns.stage_hunk, { desc = 'Stage hunk' })
      buf_keymap('v', '<Leader>hs', function()
        gitsigns.stage_hunk({
          vim.fn.line('.'),
          vim.fn.line('v'),
        })
      end, { desc = 'Stage selected hunk(s)' })

      buf_nmap('<Leadaer>hr', gitsigns.reset_hunk, { desc = 'Reset hunk' })
      buf_keymap('v', '<Leader>hr', function()
        gitsigns.reset_hunk({
          vim.fn.line('.'),
          vim.fn.line('v'),
        })
      end, { desc = 'Reset selected hunk(s)' })

      buf_nmap('<Leader>hS', gitsigns.stage_buffer, { desc = 'Stage buffer' })
      buf_nmap('<Leader>hu', gitsigns.undo_stage_hunk, { desc = 'Undo stage hunk' })
      buf_nmap('<Leader>hR', gitsigns.reset_buffer, { desc = 'Reset buffer' })
      buf_nmap('<Leader>hp', gitsigns.preview_hunk, { desc = 'Preview hunk' })
    end,
  })
end

return {
  'lewis6991/gitsigns.nvim',
  config = config,
}
