return {
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',
    dependencies = {},
    opts = {
        keymap = {
            preset = 'default',
        },
        appearance = {
            nerd_font_variant = 'mono',
        },
        completion = {
            documentation = {
                auto_show = false,
                auto_show_delay_ms = 500,
            },
        },
        sources = {
            default = { 'path' },
        },
        -- fuzzy = { implementation = 'lua' },
        -- fuzzy = { implementation = 'prefer_rust_with_warning' },
        fuzzy = { implementation = 'prefer_rust' },
        signature = { enabled = true },
    },
}
