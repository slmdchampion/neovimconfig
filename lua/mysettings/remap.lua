vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeToggle, { desc = 'Open file tree' })

vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = 'DAP continue'})
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = 'DAP step over' })
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = 'DAP step into' })
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = 'DAP step out' })
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end, { desc = 'Toggle Breakpoint' })
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end, { desc = 'Set Breakpoint' })
vim.keymap.set('n', '<Leader>lp',
	function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, { desc = 'Log point message' })
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end, { desc = 'Send expression to REPL' })
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end, { desc = 'DAP run last' })
vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
	require('dap.ui.widgets').hover()
end, { desc = 'DAP Hover' })
vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
	require('dap.ui.widgets').preview()
end, { desc = 'DAP Preview' })
vim.keymap.set('n', '<Leader>df', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.frames)
end, { desc = 'DAP float Frames' })
vim.keymap.set('n', '<Leader>ds', function()
	local widgets = require('dap.ui.widgets')
	widgets.centered_float(widgets.scopes)
end
, { desc = 'DAP float scopes' })

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


vim.keymap.set('n', '<Leader>dd', '<Plug>(doge-generate)', { desc = 'Generate Documentation' })
