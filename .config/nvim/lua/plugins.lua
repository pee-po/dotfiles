local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'git',
            'clone',
            '--depth',
            '1',
            'https://github.com/wbthomason/packer.nvim',
            install_path
        })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Icons
    use("nvim-tree/nvim-web-devicons")

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        event = "BufEnter",
        config = function()
            require("configs.lualine")
        end,
        requires = { 'nvim-web-devicons'}
    }

    -- Mason: Portable package manager
    use({
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    })

    -- Treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = function()
            require("nvim-treesitter.install").update({ with_sync = true })
        end,
        config = function()
            require("configs.treesitter")
        end,
    })

    use({
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("configs.mason-lsp")
        end,
    })
    
    -- LSP
    use({
        "neovim/nvim-lspconfig",
    })

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)

