local global = vim.g
local o = vim.o

vim.scriptencoding = "utf-8"

-- Map <leader>

global.mapleader = " "
global.maplocalleader = " "

-- Editor options
o.number = true
o.relativenumber = true
o.clipboard = "unnamedplus"
-- Tabs
o.tabstop = 4
o.shiftwidth = 0
o.expandtab = true
o.autoindent = true

o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.showmatch = true

