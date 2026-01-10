local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then return end

ts.setup({
    ensure_installed = { 
        "lua", "vim", "vimdoc", "c", "cpp", "rust", "bash" 
    },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true
    },
})
