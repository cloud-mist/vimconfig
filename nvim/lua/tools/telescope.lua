local actions = require "telescope.actions"
require("telescope").setup {
    -- this is a backup keymap, 修改了源文件： 因为不修改，他的键还在映射，起作用
    -- ~/.local/share/nvim/site/pack/packer/start/telescope.nvim/lua/telescope/mappings.lua

    defaults = {
        mappings = {
            -- {{{
            i = {
                -- move
                ["<C-e>"] = actions.move_selection_next,
                ["<C-u>"] = actions.move_selection_previous,
                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,
                --       ["<CR>"] = actions.select_default,
                -- close
                ["<C-c>"] = actions.close,
                -- 打开的文件的位置
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<CR>"] = actions.select_tab,
                --
                ["<C-n>"] = actions.preview_scrolling_up,
                ["<C-i>"] = actions.preview_scrolling_down,
                --
                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,
                --
                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                --
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<C-l>"] = actions.complete_tag,
                ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
                ["<C-w>"] = {"<c-s-w>", type = "command"}
            },
            n = {
                ["<S-q>"] = actions.close,
                --                ["<CR>"] = actions.select_default,
                --
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<CR>"] = actions.select_tab,
                --
                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                --
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                -- TODO: This would be weird if we switch the ordering.
                -- move
                ["e"] = actions.move_selection_next,
                ["u"] = actions.move_selection_previous,
                ["<Down>"] = actions.move_selection_next,
                ["<Up>"] = actions.move_selection_previous,
                -- move quickly
                ["U"] = actions.move_to_top,
                ["M"] = actions.move_to_middle,
                ["E"] = actions.move_to_bottom,
                ["gg"] = actions.move_to_top,
                ["G"] = actions.move_to_bottom,
                --
                ["<C-n>"] = actions.preview_scrolling_up,
                ["<C-i>"] = actions.preview_scrolling_down,
                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,
                ["?"] = actions.which_key
            }
            -- }}}
        }
    },
    pickers = {},
    extensions = {}
}
