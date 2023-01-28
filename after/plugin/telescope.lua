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
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n", "<leader>fa", "<cmd>Telescope adjacent<CR>", { noremap = true, silent = false })

require('telescope').load_extension("adjacent")
require('telescope').setup({
    defaults = {
        buffer_previewer_maker = new_maker,
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = {"smart"},
        file_ignore_patterns = { ".git/", "node_modules" },
    },
    pickers = {
        find_files = {
            mappings = {
                n = {
                    ["cd"] = function(prompt_bufnr)
                        local selection = require("telescope.actions.state").get_selected_entry()
                        local dir = vim.fn.fnamemodify(selection.path, ":p:h")
                        require("telescope.actions").close(prompt_bufnr)
                        -- Depending on what you want put `cd`, `lcd`, `tcd`
                        vim.cmd(string.format("silent lcd %s", dir))
                    end
                }
            }
        },
    }
})
