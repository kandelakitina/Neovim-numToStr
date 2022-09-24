local A = vim.api

-- Custom filetypes
vim.filetype.add({
    extension = {
        eslintrc = 'json',
        prettierrc = 'json',
        conf = 'conf',
        mdx = 'markdown',
        mjml = 'html',
    },
    pattern = {
        ['.*%.env.*'] = 'sh',
        ['ignore$'] = 'conf',
    },
    filename = {
        ['yup.lock'] = 'yaml',
    },
})

local num_au = A.nvim_create_augroup('NUMTOSTR', { clear = true })

-- Highlight the region on yank
A.nvim_create_autocmd('TextYankPost', {
    group = num_au,
    callback = function()
        vim.highlight.on_yank()
    end,
})

A.nvim_create_autocmd({ "InsertEnter" }, {
    callback = function()
        vim.api.nvim_set_hl(0, "Normal", {bg="#190f19"})
    end
})

A.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
        vim.api.nvim_set_hl(0, "Normal", {bg="#12121E"})
    end
})
