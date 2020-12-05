let g:fzf_lsp_timeout = get(g:, 'fzf_lsp_timeout', 5000)

let s:prefix = get(g:, 'fzf_command_prefix', '')

let s:references_command = s:prefix . 'References'
let s:definitions_command = s:prefix . 'Definitions'
let s:document_sym_command = s:prefix . 'DocumentSymbols'
let s:workspace_sym_command = s:prefix . 'WorkspaceSymbols'
let s:code_actions_command = s:prefix . 'CodeActions'
let s:range_code_actions_command = s:prefix . 'RangeCodeActions'
let s:diagnostics = s:prefix . 'Diagnostics'
execute 'command! -bang ' . s:definitions_command . ' call fzf_lsp#definitions(<bang>0)'
execute 'command! -bang ' . s:references_command . ' call fzf_lsp#references(<bang>0)'
execute 'command! -bang ' . s:document_sym_command . ' call fzf_lsp#document_symbols(<bang>0)'
execute 'command! -bang -nargs=? ' . s:workspace_sym_command . ' call fzf_lsp#workspace_symbols(<bang>0, <q-args>)'
execute 'command! -bang ' . s:code_actions_command . ' call fzf_lsp#code_actions(<bang>0)'
execute 'command! -bang -range ' . s:range_code_actions_command . ' call fzf_lsp#range_code_actions(<bang>0, <range>, <line1>, <line2>)'
execute 'command! -bang -nargs=* ' . s:diagnostics . ' call fzf_lsp#diagnostics(<bang>0, <q-args>)'
