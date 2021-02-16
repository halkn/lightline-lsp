# lightline-lsp

This plugin is a very simple plugin that integrates [lightline.vim](1) and [vim-lsp](2).
Display the diagnostic result of vim-lsp in the statusline of lightline.vim.

## Install

Install with your favorite plugin manager.
Of course lightline.vim and vim-lsp are required.

## Usage

For example, set `g:lightline` in vimrc. 
Just set `component_expand` to this plugin's autoload function and specify its type.
See lightline.vim documentation for more infomation.

```vim
let g:lightline = {
\ 'active': {
\   'right': [ [ 'lsp_errors', 'lsp_warnings', 'lsp_ok', 'lineinfo' ],
\              [ 'percent' ],
\              [ 'fileformat', 'fileencoding', 'filetype' ] ]
\ },
\ 'component_expand': {
\   'lsp_warnings': 'lightline_lsp#warnings',
\   'lsp_errors':   'lightline_lsp#errors',
\   'lsp_ok':       'lightline_lsp#ok',
\ },
\ 'component_type': {
\   'lsp_warnings': 'warning',
\   'lsp_errors':   'error',
\   'lsp_ok':       'middle',
\ },
\ }
```

## Configuration

The warning and error signs depend on the vim-lsp settings.
See vim-lsp documentation for more infomation.
The sign when vim-lsp diagnostic result does not exist is set with `g:lightline_lsp_signs_ok`.
The default value if this global variable does not exist is `OK`.

You can define icons instead of text:

```vim
let g:lightline_lsp_icon_warning = ''
let g:lightline_lsp_icon_error = ''
let g:lightline_lsp_icon_ok = ''
```

[1]: https://github.com/itchyny/lightline.vim "lightline.vim"
[2]: https://github.com/prabirshrestha/vim-lsp "vim-lsp"
