autocmd bufnewfile *.c so $VIMHOME/templates/c_header.txt
autocmd bufnewfile *.c exe "1," . 10 . "g/File Name :.*/s//File Name : " .expand("%")
autocmd bufnewfile *.c exe "1," . 10 . "g/Creation Date :.*/s//Creation Date : " .strftime("%Y-%m-%d")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepre,filewritepre *.c execute "1,10" . "g/Last Modified :.*/s/Last Modified :.*/Last Modified : " .strftime("%Y-%m-%d")
autocmd bufwritepost,filewritepost *.c execute "normal `a"
