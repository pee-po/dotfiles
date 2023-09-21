local status, masonlsp = pcall(require, "mason-lspconfig")

if not status then
    return
end

masonlsp.setup({
    automatic_installation = true,
    ensure_installed = {
        "pyright",
        "cmake",
        "texlab",
        "r_language_server",
        "sqlls",
        "bashls",
        "clangd",
    },
})

