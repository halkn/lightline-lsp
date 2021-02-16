function! lightline_lsp#warnings() abort
  let l:counts = lsp#get_buffer_diagnostics_counts()
  let l:icon_or_text = get(g:, 'lightline_lsp_icon_warning', "W")
  let l:sign = get(g:lsp_diagnostics_signs_warning, 'text', l:icon_or_text)
  return l:counts.warning == 0 ? '' : printf('%s:%d', l:sign, l:counts.warning)
endfunction

function! lightline_lsp#errors() abort
  let l:counts = lsp#get_buffer_diagnostics_counts()
  let l:icon_or_text = get(g:, 'lightline_lsp_icon_error', "E")
  let l:sign = get(g:lsp_diagnostics_signs_error, 'text', l:icon_or_text)
  return l:counts.error == 0 ? '' : printf('%s:%d', l:sign, l:counts.error)
endfunction

function! lightline_lsp#ok() abort
  let l:counts =  lsp#get_buffer_diagnostics_counts()
  let l:total = l:counts.error + l:counts.warning
  let l:icon_or_text = get(g:, 'lightline_lsp_icon_ok', "OK")
  let l:sign = get(g:, 'lightline_lsp_signs_ok', l:icon_or_text)
  return l:total == 0 ? l:sign : ''
endfunction
