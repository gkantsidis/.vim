set hls
let g:RevealWhitespace = 1
function ToggleVisibleWhitespace()
  if g:RevealWhitespace
    set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
    set list
  else
    set nolist
  endif
  let g:RevealWhitespace = !g:RevealWhitespace
endfunction

nmap <silent> <F10> <Esc>:call ToggleVisibleWhitespace()<CR>

