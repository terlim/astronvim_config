return function()
    local augroup = vim.api.nvim_create_augroup('user_cmds', { clear = true })

    vim.api.nvim_create_augroup("packer_conf", { clear = true })
    vim.api.nvim_create_autocmd("BufWritePost", {
        desc = "Sync packer after modifying plugins.lua",
        group = "packer_conf",
        pattern = "plugins.lua",
        command = "source <afile> | PackerSync",
    })
    vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'help', 'man' },
        group = augroup,
        desc = 'Use q to close the window',
        command = 'nnoremap <buffer> q <cmd>quit<cr>'
    })

    vim.api.nvim_create_autocmd('TextYankPost', {
        group = augroup,
        desc = 'Highlight on yank',
        callback = function()
            vim.highlight.on_yank({ higroup = 'Visual', timeout = 300 })
        end
    })
    -- FileType
    vim.filetype.add {
        extension = {
            rasi = "rasi",
            conf = "config",
        },
        filename = {
            ["CmakeLists.txt"] = "cmake",
            [".clang-format"] = "yaml",
        },
    }

end
