
-- selecionar tudo
vim.cmd([[ map<C-a> ggVG ]])

-- Bash - Auto preencher
vim.cmd([[ autocmd BufNewFile *.sh :call append(0, '#!/usr/bin/env bash') ]])
