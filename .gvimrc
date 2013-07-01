if has('gui_macvim')
  set antialias
  set guifont = Monaco:h14
  set guioptions -= T
  set noimdisable
  set iminsert = 0
  set showtabline = 2
  set transparency = 10

  let plugin_cmdex_disable = 1

  colorscheme mythosil
endif
