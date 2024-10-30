let s:keywords = expand('<sfile>:p:h:h') . '/keywords.txt'
autocmd BufNewFile,BufRead INCAR setfiletype INCAR | execute 'setlocal complete+=k' | execute 'set dictionary+=' . s:keywords
