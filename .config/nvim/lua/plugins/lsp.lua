return {
  'neovim/nvim-lspconfig',
  dependencies = {
    'saghen/blink.cmp',
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            }
          }
        }
      }
    }
  },

  config = function(_, opts)
    local lspconfig = require('lspconfig')
    require('mason').setup()
    require('mason-lspconfig').setup({
      ensure_installed = {
        "lua_ls",
        "jdtls",
      },
      handlers = {
        function(server_name)
          lspconfig[server_name].setup {}
        end,
        ["lua_ls"] = function()
        end,
      },
    })
    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
      lspconfig[server].setup(config)
    end
  end,
}
