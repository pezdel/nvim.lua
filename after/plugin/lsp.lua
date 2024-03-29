-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
--
local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer',
  'cssls',
  'html',
  'pyright',
  -- 'java_language_server',
  'templ',
  'jdtls',
  'jsonls',
  'yamlls',
  'gopls',
  'svelte',
  'sqlls',
  'dockerls'
})

-- Fix Undefined global 'vim'
lsp.format_on_save({
    servers = {
        ["rust_analyzer"] = {"rust"},
        ["svelte"] = {"svelte"},
        ["tsserver"] = {"typescript"},
        ["gopls"] = {"go"},
        ["html"] = {"html"},
        ["dockerls"] = {"docker"},
        ["jdtls"] = {"java"},
        -- ["templ"] = {"templ"},
        -- ["java_language_server"] = {"java"},
    }
})

-- Format current buffer using LSP.
vim.api.nvim_create_autocmd(
  {
    -- 'BufWritePre' event triggers just before a buffer is written to file.
    "BufWritePre"
  },
  {
    pattern = {"*.templ"},
    callback = function()
      vim.lsp.buf.format()
    end,
  }
)
require("lspconfig").tailwindcss.setup({
  filetypes = {
    'templ'
    -- include any other filetypes where you need tailwindcss
  },
  init_options = {
    userLanguages = {
        templ = "html"
    }
  }
})

lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-y>'] = cmp.mapping.confirm({ select = true }),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<C-k>", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "+", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "-", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.setup()


vim.diagnostic.config({
    underline = true,
    virtual_text = true,
})

-- vim.api.nvim_create_autocmd("CursorHold", {
--     buffer = bufnr,
--     callback = function()
--         local opts = {
--             focusable = false,
--             close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
--             border = 'rounded',
--             source = 'always',
--             prefix = ' ',
--             scope = 'cursor',
--         }
--         vim.diagnostic.open_float(nil, opts)
--     end
-- })

