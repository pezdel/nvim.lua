return {
  'akinsho/bufferline.nvim', 
  version = "*", 
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require'bufferline'.setup {
      options = {
        close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end,
      },
      highlights = {
        buffer_selected ={
          bg = '#839496',
          fg = '#040609'
        },
        background ={
          bg = '#040609',
          fg = '#839496'
        }
      },
    }
  end,
}
