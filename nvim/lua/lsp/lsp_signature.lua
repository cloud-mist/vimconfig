-- 函数签名提示
require("lsp_signature").setup(
    {
        bind = true,
        -- 边框样式
        handler_opts = {
            -- double、rounded、single、shadow、none
            border = "rounded"
        },
        -- 自动触发
        floating_window = false,
        toggle_key = "<C-j>",
        hint_enable = false,
        -- 正在输入的参数将如何突出显示
        hi_parameter = "LspSignatureActiveParameter"
    }
)
