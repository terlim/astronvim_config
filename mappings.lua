local function vim_opt_toggle(user_opt, first, second)
    if first == nil then
        first = true
    end
    if second == nil then
        second = false
    end
    if vim.o[user_opt] == first then
        vim.opt[user_opt] = second
    else
        vim.opt[user_opt] = first
    end
end

return {
    n = {
        ["<leader>q"] = { "<cmd>Bdelete!<cr>", desc = "Quit Buffer" },
        ["<leader>w"] = { "<cmd>w<cr>", desc = "Save Buffer" },
        ["<leader>fn"] = { "<cmd>enew<cr>", desc = "New File" },
        ["<leader>h"] = { "<cmd>nohlsearch<cr>", desc = "No Highlight" },
        ["<C-a>"] = { "gg<S-v>G", desc = "Select all" },
        ["<A-k>"] = { "<cmd>m .-2<CR>", desc = "move line up" },
        ["<A-j>"] = { "<cmd>m .+1<CR>", desc = "move line down" },
    },
    v = {
        ["<A-j>"] = { ":m '>+1<cr>gv=gv" },
        ["<A-k>"] = { ":m '<-2<cr>gv=gv" },
    },
}
