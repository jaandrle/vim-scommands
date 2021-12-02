
" #region Guard
if exists('g:load_scommands')
  finish
endif
let g:load_scommands = 1

let s:save_cpo = &cpo
set cpo&vim
" #endregion

nmap s <nop>
vmap s <nop>
nmap S <nop>
vmap S <nop>

nmap shs :map s<cr>

function scommands#map(letter, namespace, types)
    for type in split(a:types, ',')
        let cmd= 'v'==tolower(type) ? ':<c-u>' : ':'
        let cmd_final= 'V'==type ? 'gv:' : ':'
        execute type."map s".a:letter." ".cmd."call feedkeys('".cmd_final.a:namespace."<tab>', 'tn')<cr>"
        execute type."map S".a:letter." q:?^".a:namespace."<cr><cr>"
    endfor
endfunction

" #region Finish
let &cpo = s:save_cpo
unlet s:save_cpo
" #endregion

" vim: set tabstop=4 shiftwidth=4 textwidth=250 expandtab :
" vim>60: set foldmethod=marker foldmarker=#region,#endregion :
