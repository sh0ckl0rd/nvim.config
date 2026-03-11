--[[

███████╗██╗  ██╗ ██████╗  ██████╗██╗  ██╗██╗      ██████╗ ██████╗ ██████╗ 
██╔════╝██║  ██║██╔═══██╗██╔════╝██║ ██╔╝██║     ██╔═══██╗██╔══██╗██╔══██╗
███████╗███████║██║   ██║██║     █████╔╝ ██║     ██║   ██║██████╔╝██║  ██║
╚════██║██╔══██║██║   ██║██║     ██╔═██╗ ██║     ██║   ██║██╔══██╗██║  ██║
███████║██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗╚██████╔╝██║  ██║██████╔╝
╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝
                                                        AD MAIORA
--]]

require("config.options")
require("config.autocmds")
require("config.keymaps")
require("config.statusline")

require("plugins.pack")
require("plugins.nvim-tree")
require("plugins.fzf-lua")
require("plugins.mini")
require("plugins.gitsigns")
require("plugins.treesitter-nvim")

vim.cmd.colorscheme("oxocarbon")
