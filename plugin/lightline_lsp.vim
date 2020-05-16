if exists('g:loaded_lightline_lsp')
  finish
endif
let g:loaded_lightline_lsp = 1

augroup lightline_lsp
  autocmd!
  autocmd User lsp_diagnostics_updated call lightline#update()
augroup END
