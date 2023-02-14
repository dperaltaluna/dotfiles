-- Aliases

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local cmd = vim.cmd

map('', '<up>', '<nop>', {noremap = true})
map('', '<down>', '<nop>', {noremap = true})
map('', '<left>', '<nop>', {noremap = true})
map('', '<right>', '<nop>', {noremap = true})

map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-l>', '<right>', default_opts)

-- fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

---------------------------------------------------------
-- Applications & Plugins shortcuts:
-----------------------------------------------------------
-- open terminal
map('n', '<C-t>', ':Term<CR>', {noremap = true})
map('t', '<C-w>h', '<C-\\><C-n><C-w>h', {noremap = true})
map('t', '<C-w>j', '<C-\\><C-n><C-w>j', {noremap = true})
map('t', '<C-w>k', '<C-\\><C-n><C-w>k', {noremap = true})
map('t', '<C-w>l', '<C-\\><C-n><C-w>l', {noremap = true})
map('t', '<C-w><C-w>', '<C-\\><C-n><C-w><C-w>', {noremap = true})

-- nvim-tree
map('n', '<C-n>', ':Neotree toggle<CR>', default_opts)       -- open/close


-- Vista tag-viewer
map('n', '<C-q>', ':Vista!!<CR>', default_opts)   -- open/close
map('i', '<C-q>', ':Vista!!<CR>', default_opts)   -- open/close
map('n', '<leader>m', ':Vista!!<CR>', default_opts)

map('n', '<leader>tf', ':Telescope file_browser<CR>', default_opts)
map('n', '<leader>ts', ':Telescope symbols<CR>', default_opts)

-- on hesitation, bring up the panel
map('n', '<C-s>', ':SidebarNvimToggle<CR>', default_opts)


-- cokeline
map('n', '<S-Tab>',   '<Plug>(cokeline-focus-prev)',  { silent = true })
map('n', '<Tab>',     '<Plug>(cokeline-focus-next)',  { silent = true })
map('n', '<Leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
map('n', '<Leader>n', '<Plug>(cokeline-switch-next)', { silent = true })

for i = 1,9 do
  map('n', ('<F%s>'):format(i),      ('<Plug>(cokeline-focus-%s)'):format(i),  { silent = true })
  map('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
end

-- Neogen
map("n", "<leader>ng", ":lua require('neogen').generate()<CR>", { noremap = true })


-- noterm
local NOREF_NOERR_TRUNC = { noremap = true, silent = true, nowait = true }
vim.keymap.set('n', '<M-Tab>', function ()
    if vim.bo.filetype == 'neo-tree' then return end
    vim.cmd('NeoTermOpen')
end, NOREF_NOERR_TRUNC)
vim.keymap.set('t', '<M-Tab>', function () vim.cmd('NeoTermClose') end, NOREF_NOERR_TRUNC)
vim.keymap.set('t', '<C-w>', function () vim.cmd('NeoTermEnterNormal') end, NOREF_NOERR_TRUNC)
vim.keymap.set('t', '<M-w>', function () vim.cmd('NeoTermEnterNormal') end, NOREF_NOERR_TRUNC)

