vim.cmd [[ 
  au BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g'\"" | 
  \ endif
]]

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local os = vim.fn.has('macunix')

if os == 1 then
  autocmd("VimEnter", {
    pattern = "*",
    command = 'silent exec "!(/opt/homebrew/bin/im-select com.apple.keylayout.ABC)"',
    group = cursorGrp,
  })

  autocmd("InsertLeave", {
    pattern = "*",
    command = 'silent exec "!(/opt/homebrew/bin/im-select com.apple.keylayout.ABC)"',
    group = cursorGrp,
  })
end

