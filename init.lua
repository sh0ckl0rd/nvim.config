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
require("config.term")

require("plugins.pack")
require("plugins.nvim-tree")
require("plugins.fzf-lua")
require("plugins.mini")
require("plugins.gitsigns")
require("plugins.treesitter-nvim")
require("plugins.alpha")
require("plugins.mason")
require("plugins.lsp")

vim.cmd.colorscheme("neobones")
