function! lightline_lsp#warnings() abort
  let l:counts = lsp#get_buffer_diagnostics_counts()
  let l:sign = get(g:lsp_diagnostics_signs_warning, 'text', 'W')
  return l:counts.warning == 0 ? '' : printf('%s:%d', l:sign, l:counts.warning)
endfunction

function! lightline_lsp#errors() abort
  let l:counts = lsp#get_buffer_diagnostics_counts()
  let l:sign = get(g:lsp_diagnostics_signs_error, 'text', 'E')
  return l:counts.error == 0 ? '' : printf('%s:%d', l:sign, l:counts.error)
endfunction

function! lightline_lsp#ok() abort
  let l:counts =  lsp#get_buffer_diagnostics_counts()
  let l:total = l:counts.error + l:counts.warning
  let l:sign = get(g:, 'lightline_lsp_signs_ok', 'OK')
  return l:total == 0 ? l:sign : ''
endfunction
