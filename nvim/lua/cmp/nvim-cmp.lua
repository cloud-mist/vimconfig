require("luasnip.loaders.from_vscode").lazy_load()

local cmp = require("cmp")
local luasnip = require("luasnip")

vim.opt.completeopt = {"menu", "menuone", "noselect"}

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local kind_icons = {
    --{{{
    Text = " ",
    Method = "m ",
    Function = " ",
    Constructor = " ",
    Field = " ",
    Variable = " ",
    Class = " ",
    Interface = " ",
    Module = " ",
    Property = " ",
    Unit = " ",
    Value = " ",
    Enum = " ",
    Keyword = " ",
    Snippet = " ",
    Color = " ",
    File = " ",
    Reference = " ",
    Folder = " ",
    EnumMember = " ",
    Constant = " ",
    Struct = " ",
    Event = " ",
    Operator = " ",
    TypeParameter = " "
    --}}}
}

cmp.setup(
    {
        snippet = {
            expand = function(args)
                require("luasnip").lsp_expand(args.body)
            end
        },
        sources = {
            {name = "nvim_lua"},
            {name = "nvim_lsp"},
            {name = "luasnip"},
            {name = "path"},
            {name = "buffer"},
            {name = "cmdline"}
        },
        formatting = {
            fields = {"abbr", "kind", "menu"},
            format = function(entry, vim_item)
                -- Kind icons
                vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
                vim_item.menu =
                    ({
                    nvim_lsp = "[LSP]",
                    luasnip = "[Snippet]",
                    nvim_lua = "[Lua]",
                    path = "[Path]",
                    buffer = "[buf]",
                    cmdline = "cmd"
                })[entry.source.name]
                return vim_item
            end
        },
        mapping = {
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<C-s>"] = cmp.mapping.scroll_docs(-4),
            ["<C-t>"] = cmp.mapping.scroll_docs(4),
            ["<CR>"] = cmp.mapping.confirm {
                behavior = cmp.ConfirmBehavior.Replace,
                select = true
            },
            ["<C-e>"] = cmp.mapping(
                function(fallback)
                    if luasnip.expand_or_locally_jumpable() then
                        luasnip.expand_or_jump()
                    elseif has_words_before() then
                        cmp.complete()
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            ),
            ["<C-n>"] = cmp.mapping(
                function(fallback)
                    if luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end,
                {"i", "s"}
            )
        }
    }
)
