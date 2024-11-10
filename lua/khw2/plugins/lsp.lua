return {
  {
    "williamboman/mason.nvim",
    --priority = 1000,
    config = function()
      require("mason").setup()
      require("mason").setup({
        PATH = "prepend"
      })
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
      require("mason-lspconfig").setup({
        ensure_install = {},
        automatic_installation = true
      })
    end
  },
  {
    "onsails/lspkind.nvim",
    config = function()
      require("lspkind").setup()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    dependecies = {
      "luckasRanarison/tailwind-tools.nvim",
      "onsails/lspkind.nvim"
    },
    priority = 1000,
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        formatting = {
          format = require("lspkind").cmp_format({
            before = require("tailwind-tools.cmp").lspkind_format
          })
        },
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources(
          {
            { name = "nvim_lsp" }
          },
          {
            { name = "buffer" }
          }
        ),
      })
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local keymap = vim.keymap

      local on_attach = function(_, _)
        --keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
        keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

        keymap.set("n", "gd", vim.lsp.buf.definition, {})
        keymap.set("n", "gi", vim.lsp.buf.implementation, {})
        keymap.set("n", "K", vim.lsp.buf.hover, {})

        --require("document-color").buf_attach(bufnr)
      end

      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      --capabilities.textDocument.colorProvider = {
      --  dynamicRegistration = true
      --}

      require("lspconfig").pyright.setup {
        on_attach = on_attach,
        capabilities = capabilities
      }
      require("lspconfig").lua_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        default_config = {
          root_dir = vim.fs.dirname(vim.fs.find({"pyproject.toml", "setup.py"}, { upward = true })[1])
          --root_dir = vim.fs.dirname(vim.fs.find({ ".git", ".clang-format", "pyproject.toml", "setup.py" }, { upward = true })[1])
        }
      }
      require("lspconfig").vimls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        default_config = {
          root_dir = vim.fs.dirname(vim.fs.find({"pyproject.toml", "setup.py"}, { upward = true })[1])
        }
      }
      require("lspconfig").clangd.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        default_config = {
          root_dir = vim.fs.dirname(vim.fs.find({"pyproject.toml", "setup.py"}, { upward = true })[1])
        }
      }
      require("lspconfig").tailwindcss.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        default_config = {
          root_dir = vim.fs.dirname(vim.fs.find({"tailwind.config.js", "tailwind.config.cjs", "tailwind.config.mjs", "tailwind.config.ts", "postcss.config.js", "postcss.config.cjs", "postcss.config.mjs", "postcss.config.ts", "package.json", "node_modules", ".git"}, { upward = true })[1])
        }
      }
      require("lspconfig").html.setup {
        on_attach = on_attach,
        capabilities = capabilities
      }
      require("lspconfig").cssls.setup {
        on_attach = on_attach,
        capabilities = capabilities
      }
      require("lspconfig").svelte.setup {
        on_attach = on_attach,
        capabilities = capabilities
        --default_config = {
          --root_dir = vim.fs.dirname(vim.fs.find({ ".git", ".clang-format", "pyproject.toml", "setup.py" }, { upward = true })[1])
        --}
      }
      require("lspconfig").ts_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        default_config = {
          root_dir = vim.fs.dirname(vim.fs.find({"tsconfig.json", "jsconfig.json", "package.json", ".git"}, { upward = true })[1])
        }
      }
    end
  },
  {
    "williamboman/nvim-lsp-installer",
    --priority = 500,
    config = function()
      require("nvim-lsp-installer").setup({
        automatic_installaion = true,
        --install_root_dir = path.concat { vim.fn.stdpath "data", "lsp_servers" }
      })
    end
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    version = "v2.*",
    build = "make install_jsregexp",
    config = function()
      local ls = require("luasnip")
      require("luasnip.loaders.from_vscode").lazy_load()
    end
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependecies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "html", "svelte" },
    config = function()
      require("tailwind-tools").setup({
        server = {
          override = true,
          settings = {},
          on_attach = function(client, bufnr) end
        },
        document_color = {
          enabled = true,
          kind = "inline",
          inline_symbol = " ",
          debounce = 200
        },
        conceal = {
          enabled = false,
          min_length = nil,
          symbol = " ",
          highlight = {
            fg = "#38BDF8"
          }
        },
        cmp = {
          highlight = "foreground",
        },
        extensions = {
          queries = {},
          patterns = {}
        }
      })
    end
  },
  --[[
  {
    "mrshmllow/document-color.nvim",
    config = function()
      require("document-color").setup({
        mode = "background",
      })
    end
  },
  {
    "razak17/tailwind-fold.nvim",
    ft = { "html", "svelte" }
  }
  ]]--
}
