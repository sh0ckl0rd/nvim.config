local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

local function get_date()
	return os.date("%a %b %d, %Y")
end

local function get_time()
	return os.date("%H:%M")
end

local function get_greeting()
	local hour = tonumber(os.date("%H"))
	if hour < 12 then
		return "Good morning"
	elseif hour < 18 then
		return "Good afternoon"
	else
		return "Good evening"
	end
end

local function get_cwd()
	local cwd = vim.fn.getcwd()
	local home = vim.fn.expand("$HOME")
	return cwd:gsub(home, "~")
end

local function get_recent_files()
	local mru = vim.v.oldfiles
	local items = {}
	local cwd = vim.fn.getcwd()
	for i, fn in ipairs(mru) do
		if i > 6 then
			break
		end
		if vim.fn.filereadable(fn) == 1 then
			local short_fn = fn:gsub(cwd .. "/", ""):gsub(vim.fn.expand("$HOME"), "~")
			if #short_fn > 40 then
				short_fn = short_fn:sub(1, 37) .. "..."
			end
			table.insert(items, { fn = fn, name = short_fn })
		end
	end
	return items
end

dashboard.section.header.val = {
	"███████╗██╗  ██╗ ██████╗  ██████╗██╗  ██╗██╗      ██████╗ ██████╗ ██████╗",
	"██╔════╝██║  ██║██╔═══██╗██╔════╝██║ ██╔╝██║     ██╔═══██╗██╔══██╗██╔══██╗",
	"███████╗███████║██║   ██║██║     █████╔╝ ██║     ██║   ██║██████╔╝██║  ██║",
	"╚════██║██╔══██║██║   ██║██║     ██╔═██╗ ██║     ██║   ██║██╔══██╗██║  ██║",
	"███████║██║  ██║╚██████╔╝╚██████╗██║  ██╗███████╗╚██████╔╝██║  ██║██████╔╝",
	"╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝",
	"                                                           NVIM CONFIG v1",
}

dashboard.section.header.opts = {
	position = "center",
	hl = "Title",
}

local recent_files = get_recent_files()
local recent_buttons = {}
for i, item in ipairs(recent_files) do
	local key = tostring(i)
	local btn = dashboard.button(key, "  " .. item.name, "<cmd>e " .. item.fn .. "<CR>")
	btn.opts.hl = "DashboardMruFile"
	table.insert(recent_buttons, btn)
end

dashboard.section.recent = {
	val = recent_buttons,
	opts = {
		position = "center",
		spacing = 0,
	},
}

dashboard.section.footer.val = {
	"│  " .. get_greeting() .. "  │  " .. get_cwd() .. "  │  " .. get_date() .. " " .. get_time() .. "  │",
}

dashboard.section.footer.opts = {
	position = "center",
	hl = "Comment",
}

dashboard.section.buttons.val = {
	dashboard.button("e", "  New file", "<cmd>ene<BAR>startinsert<CR>"),
	dashboard.button("r", "  Recent files", "<cmd>FzfLua oldfiles<CR>"),
	dashboard.button("f", "  Find file", "<cmd>FzfLua files<CR>"),
	dashboard.button("m", "  Mason", "<cmd>Mason<CR>"),
	dashboard.button("c", "  Config", "<cmd>e $MYVIMRC<CR>"),
	dashboard.button("q", "  Quit", "<cmd>qa<CR>"),
}

dashboard.config.opts = {
	layout = {
		{ type = "padding", val = 1 },
		dashboard.section.header,
		{ type = "padding", val = 1 },
		dashboard.section.recent,
		{ type = "padding", val = 1 },
		dashboard.section.buttons,
		{ type = "padding", val = 1 },
		dashboard.section.footer,
	},
	opts = {
		margin = 3,
	},
}

alpha.setup(dashboard.config)

vim.api.nvim_create_autocmd("FileType", {
	pattern = "alpha",
	callback = function()
		vim.b.miniindentscope_disable = true
	end,
})
