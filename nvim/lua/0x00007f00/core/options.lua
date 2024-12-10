local g = vim.g
local opt = vim.opt

-- Disable GUI cursor for a classic terminal-like experience
opt.guicursor = ""

-- Line Numbers
opt.number = true           -- Show absolute line numbers
opt.relativenumber = true   -- Show relative line numbers

-- Tabs and Indentation
opt.tabstop = 4             -- Tab width
opt.shiftwidth = 4          -- Indentation width for auto-indents
opt.softtabstop = 4         -- Spaces per tab when editing
opt.expandtab = true        -- Convert tabs to spaces
opt.smartindent = true      -- Enable smart indentation

-- Text Wrapping
opt.wrap = false            -- Disable line wrapping

-- File Management
opt.swapfile = false        -- Disable swap file
opt.backup = false          -- Disable file backup
opt.undofile = true         -- Enable persistent undo

-- Search Settings
opt.hlsearch = false        -- Disable search highlight
opt.incsearch = true        -- Enable incremental search
opt.ignorecase = true       -- Case insensitive search
opt.smartcase = true        -- Case sensitive if uppercase present
opt.showmatch = true        -- Highlight matching brackets

-- Appearance
opt.termguicolors = true    -- Enable true color support
opt.signcolumn = "yes"      -- Always show sign column
opt.colorcolumn = "0"       -- Highlight column 0

-- Scrolling
opt.scrolloff = 8           -- Keep 8 lines visible when scrolling

-- Clipboard Integration
opt.clipboard = "unnamedplus"   -- Use system clipboard

-- Performance
opt.updatetime = 50         -- Reduce update time for faster response

-- Customize Keywords
opt.iskeyword:remove("_")   -- Treat "_" as a word separator

-- Disable background setting
g.nobackground = 1

-- Auto Commands
vim.cmd([[
    " Avoid auto-commenting on new lines
    autocmd BufEnter * set fo-=c fo-=r fo-=o
]])

vim.g.loaded_gzip = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
