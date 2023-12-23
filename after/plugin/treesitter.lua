local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
  ensure_installed = {"help", "javascript", "typescript", "c", "rust", "lua", "go", "svelte", "vue", "templ"},
  ignore_install = { "" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    -- disable = { "" },
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "" } },
  -- autotag={
  --       enable=true,
  --   }
}

local treesitter_parser_config = require "nvim-treesitter.parsers".get_parser_configs()
treesitter_parser_config.templ = {
  install_info = {
    url = "https://github.com/vrischmann/tree-sitter-templ.git",
    files = {"src/parser.c", "src/scanner.c"},
    branch = "master",
  },
}

