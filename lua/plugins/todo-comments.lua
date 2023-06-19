local nmap = require('utils').nmap
local todo_comments = require('todo-comments')

todo_comments.setup()

nmap('<Leader>tl', '<cmd>TodoQuickFix<CR>')
nmap(']t', todo_comments.jump_next, { desc = 'Jump to next TODO' })
nmap('[t', todo_comments.jump_prev, { desc = 'Jump to previous TODO' })
