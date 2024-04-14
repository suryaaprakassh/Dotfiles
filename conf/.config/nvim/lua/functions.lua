function LoadTemplate()
  local template_path = vim.fn.expand("/home/suryaprakash/.vim/skeletons/template.cpp")
  vim.cmd("normal ggVGd")
  vim.cmd("r " .. template_path)
end

function OpenFiles()
  vim.cmd("vertical split")
  vim.cmd("vertical resize 100")
  vim.cmd("wincmd l")
  vim.cmd("wincmd s")
  vim.cmd("execute 'edit' fnameescape('input.txt')")
  vim.cmd("wincmd j")
  vim.cmd("execute 'edit' fnameescape('output.txt')")
end

function Compile()
  vim.cmd("!g++ %:p -o %:p:r && %:p:r")
end

vim.cmd("command! Temp lua LoadTemplate()")
vim.cmd("command! Split lua OpenFiles()")
vim.cmd("command! Comp lua Compile()")
