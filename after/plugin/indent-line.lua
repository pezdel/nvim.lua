local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
  return
end


vim.opt.list = true

indent_blankline.setup {
    show_first_indent_level = false,
    show_end_of_line = true,
}
