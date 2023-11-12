local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "w", "  > VimWiki"   , ":VimwikiIndex<CR>"),
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "t", "  > Find file", ":cd `pwd`  | Telescope find_files<CR>"),
    dashboard.button( "c", "  > open HOME_CONFIG", ":cd $HOME_CONFIG  | :e .<CR>"),
    dashboard.button( "n", "  > open HOME_CONFIG/nvim/lua", ":cd $HOME_CONFIG/nvim/lua  | :e .<CR>"),
    dashboard.button( "h", "  > Find file in home ", ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "a", "  > Settings-startup-alpha" , ":e $HOME_CONFIG/nvim/lua/setup/setup-alpha.lua | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "k", "  > Settings: Kitty" , ":e $HOME_CONFIG/Kitty/kitty-extra.conf|:2357 | :cd %:p:h<CR>"),
    -- dashboard.button( "k", "  > Settings: Kitty" , ":e $HOME_CONFIG/Kitty/kitty.conf | :cd %:p:h | split . | wincmd k | pwd<CR>"),
}


-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])












