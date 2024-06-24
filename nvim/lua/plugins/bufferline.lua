
return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        require('bufferline').setup {
            options = {
                diagnostics = "nvim_lsp", -- Diagnostics integration with Neovim's built-in LSP
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local icon = level:match("error") and " " or " "
                    return " " .. icon .. count
                end,
            },
            highlights = {
                fill = {
                    guibg = '#1e1e1e'
                },
                background = {
                    guibg = '#1e1e1e'
                },
                buffer_selected = {
                    guifg = '#ffffff',
                    guibg = '#313131',
                    gui = 'bold'
                },
                separator = {
                    guifg = '#282828',
                    guibg = '#282828'
                },
                separator_selected = {
                    guifg = '#282828',
                    guibg = '#282828'
                },
                indicator_selected = {
                    guifg = '#282828',
                    guibg = '#282828'
                },
                modified = {
                    guifg = '#e0e0e0',
                    guibg = '#282828'
                },
                modified_selected = {
                    guifg = '#e0e0e0',
                    guibg = '#282828'
                },
                close_button = {
                    guifg = '#fb4934',
                    guibg = '#282828'
                },
                close_button_selected = {
                    guifg = '#fb4934',
                    guibg = '#282828'
                },
                close_button_visible = {
                    guifg = '#fb4934',
                    guibg = '#282828'
                }
            },
        }
        -- Key mappings for tab management
        vim.api.nvim_set_keymap('n', '<leader>t', ':tabnew<CR>', { noremap = true, silent = true }) --new tab
        vim.api.nvim_set_keymap('n', '<leader>w', '<Cmd>bd<CR>', { noremap = true, silent = true }) --close current tab

        vim.api.nvim_set_keymap('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { noremap = true, silent = true }) -- Cycle to the next buffer
   end,
}

