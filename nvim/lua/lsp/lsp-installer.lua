local lsp_installer = require "nvim-lsp-installer"

lsp_installer.settings(
    {
        ui = {
            keymaps = {
                toggle_server_expand = "<CR>",
                install_server = "in",
                update_server = "up",
                update_all_servers = "ua",
                uninstall_server = "X"
            }
        }
    }
)
