vim.pack.add({
        https://github.com/nvim-tree/nvim-tree.lua
})

local function packadd(name)
        vim.cmd("packadd " ..name)
end
packadd("nvim-tree.lua")
