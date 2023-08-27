--DONT VIEW BIG FILES
local previewers = require("telescope.previewers")
local new_maker = function(filepath, bufnr, opts)
  opts = opts or {}

  filepath = vim.fn.expand(filepath)
  vim.loop.fs_stat(filepath, function(_, stat)
    if not stat then return end
    if stat.size > 100000 then
      return
    else
      previewers.buffer_previewer_maker(filepath, bufnr, opts)
    end
  end)
end




local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})
vim.keymap.set('n', '<leader>d', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>s', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>S', builtin.lsp_workspace_symbols, {})
vim.keymap.set("n", "<leader>F", "<cmd>Telescope adjacent<CR>", { noremap = true, silent = false })

require('telescope').load_extension("adjacent")
require('telescope').setup({
    defaults = {
        buffer_previewer_maker = new_maker,
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = {"smart"},
        file_ignore_patterns = { ".git/", "node_modules" },
        layout_config ={
            horizontal = {
                preview_cutoff = 0,
                preview_width = .5
            }
        }
    },
    pickers = {
        find_files = {
            -- theme = "dropdown"
        }
    }
})
