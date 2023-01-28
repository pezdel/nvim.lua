--gruvbox-baby
vim.g.gruvbox_baby_function_style = "NONE"
-- ColorGroup = {fg = "foreground color", bg = "background_color", style = "some_style(:h attr-list)"}
--vim.g.gruvbox_baby_highlights = {Normal = {fg = "#123123", bg = "NONE", style="underline"}}
vim.g.gruvbox_baby_telescope_theme = 1
--vim.g.gruvbox_baby_transparent_mode = 0



local ok_status, NeoSolarized = pcall(require, "NeoSolarized")

if not ok_status then
  return
end

-- Default Setting for NeoSolarized

NeoSolarized.setup {
  style = "dark", -- "dark" or "light"
  transparent = false, -- true/false; Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  enable_italics = false, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
  styles = {
    -- Style to be applied to different syntax groups
    comments = { italic = false },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = { italic = false },
    underline = true, -- true/false; for global underline
    undercurl = true, -- true/false; for global undercurl
  },
  -- Add specific hightlight groups
  on_highlights = function(highlights, colors) 
    -- highlights.Include.fg = colors.red -- Using `red` foreground for Includes
  end, 
}
-- Set colorscheme to NeoSolarized
-- vim.cmd [[
--    try
--         colorscheme gruvbox-baby 
--     catch /^Vim\%((\a\+)\)\=:E18o
--         colorscheme default
--         set background=dark
--     endtry
-- ]]
--

vim.cmd[[colorscheme gruvbox-baby]]
