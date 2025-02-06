return {
  diagnostics = {
    Error = '',
    Warn = '',
    Hint = '󰌶',
    Info = '',
  },
  git = {
    unstaged = 'M',
    staged = '➜',
    untracked = '?',
  },
  -- get similar icons and colors from:
  -- https://raw.githubusercontent.com/material-extensions/vscode-material-icon-theme/main/images/fileIcons.png
  -- https://raw.githubusercontent.com/material-extensions/vscode-material-icon-theme/main/images/folderIcons.png

  -- NOTE: use folder-shaped icons
  directory = {
    utils = { icon = '󰉗', hl = 'FolderUtils' },
    ['.cache'] = { icon = '󰪺', hl = 'FolderCyan' },
    ['.config'] = { icon = '󱁿', hl = 'FolderCyan' },
    ['.git'] = { icon = '', hl = 'FolderGit' },
    ['.github'] = { icon = '', hl = 'FolderGithub' },
    ['.local'] = { icon = '󰉌', hl = 'FolderCyan' },
    ['.vim'] = { hl = 'MiniIconsGreen' },
    AppData = { icon = '󰉌', hl = 'FolderDeepOrange' },
    Applications = { icon = '󱧺', hl = 'FolderDeepOrange' },
    Desktop = { icon = '󰚝', hl = 'FolderDesktop' },
    Documents = { icon = '󱧶', hl = 'FolderDeepOrange' },
    Downloads = { icon = '󰉍', hl = 'FolderDownloads' },
    -- Favorites = { glyph = '󱃪', hl = 'MiniIconsOrange' },
    -- Library = { glyph = '󰲂', hl = 'MiniIconsOrange' },
    -- Music = { glyph = '󱍙', hl = 'MiniIconsOrange' },
    -- Network = { glyph = '󰡰', hl = 'MiniIconsOrange' },
    -- Pictures = { glyph = '󰉏', hl = 'MiniIconsOrange' },
    -- ProgramData = { glyph = '󰉌', hl = 'MiniIconsOrange' },
    -- Public = { glyph = '󱧰', hl = 'MiniIconsOrange' },
    -- System = { glyph = '󱧼', hl = 'MiniIconsOrange' },
    -- Templates = { glyph = '󱋣', hl = 'MiniIconsOrange' },
    -- Trash = { glyph = '󱧴', hl = 'MiniIconsOrange' },
    -- Users = { glyph = '󰉌', hl = 'MiniIconsOrange' },
    -- Videos = { glyph = '󱞊', hl = 'MiniIconsOrange' },
    -- Volumes = { glyph = '󰉓', hl = 'MiniIconsOrange' },
    -- autoload = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- bin = { glyph = '󱧺', hl = 'MiniIconsYellow' },
    -- build = { glyph = '󱧼', hl = 'MiniIconsGrey' },
    -- boot = { glyph = '󰴋', hl = 'MiniIconsYellow' },
    -- colors = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- compiler = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- dev = { glyph = '󱧼', hl = 'MiniIconsYellow' },
    -- doc = { glyph = '󱂷', hl = 'MiniIconsPurple' },
    -- docs = { glyph = '󱂷', hl = 'MiniIconsPurple' },
    -- etc = { glyph = '󱁿', hl = 'MiniIconsYellow' },
    -- ftdetect = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- ftplugin = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- home = { glyph = '󱂵', hl = 'MiniIconsYellow' },
    -- indent = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- keymap = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- lang = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- lib = { glyph = '󰲂', hl = 'MiniIconsYellow' },
    -- lsp = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- lua = { glyph = '󰉋', hl = 'MiniIconsBlue' },
    -- media = { glyph = '󱧺', hl = 'MiniIconsYellow' },
    -- mnt = { glyph = '󰉓', hl = 'MiniIconsYellow' },
    -- ['mini.nvim'] = { glyph = '󰚝', hl = 'MiniIconsRed' },
    -- node_modules = { glyph = '', hl = 'MiniIconsGreen' },
    -- nvim = { glyph = '󰉋', hl = 'MiniIconsGreen' },
    -- opt = { glyph = '󰉗', hl = 'MiniIconsYellow' },
    -- pack = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- parser = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- plugin = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- proc = { glyph = '󰢬', hl = 'MiniIconsYellow' },
    -- queries = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- rplugin = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- root = { glyph = '󰷌', hl = 'MiniIconsYellow' },
    -- sbin = { glyph = '󱧺', hl = 'MiniIconsYellow' },
    -- spell = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- src = { glyph = '󰴉', hl = 'MiniIconsPurple' },
    -- srv = { glyph = '󱋣', hl = 'MiniIconsYellow' },
    -- snippets = { glyph = '󱁽', hl = 'MiniIconsYellow' },
    -- syntax = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- tmp = { glyph = '󰪺', hl = 'MiniIconsYellow' },
    -- test = { glyph = '󱞊', hl = 'MiniIconsBlue' },
    -- tests = { glyph = '󱞊', hl = 'MiniIconsBlue' },
    -- tutor = { glyph = '󱁽', hl = 'MiniIconsGreen' },
    -- usr = { glyph = '󰉌', hl = 'MiniIconsYellow' },
    -- var = { glyph = '󱋣', hl = 'MiniIconsYellow' },
  },
  -- NOTE: only add icon and/or colors to files that do not have one yet
  file = {
    ['TODO.md'] = { icon = '󰝖', hl = 'FileTodo' },
  },
}
