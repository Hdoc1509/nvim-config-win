let g:configPath = stdpath('config')

exec 'so ' . g:configPath  . '/utils.vim'

call SourceConfig('options')
call SourceConfig('plugins')
call SourceConfig('plugins-config')
call SourceConfig('maps')
call SourceConfig('colors')

