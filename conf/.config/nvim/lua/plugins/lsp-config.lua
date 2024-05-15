return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "clangd",
          "pyright",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local utils = require("lspconfig/util")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities,
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      lspconfig.svelte.setup({
        capabilities = capabilities,
      })

      lspconfig.prismals.setup({
        capabilities = capabilities,
      })

      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
      })

      lspconfig.marksman.setup({
        capabilities = capabilities,
      })

      lspconfig.clangd.setup({
        capabilities = capabilities,
        filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
        cmd = {
          "clangd",
          "--offset-encoding=utf-16",
        },
      })

      lspconfig.htmx.setup({
        capabilities=capabilities,
      })

      lspconfig.gopls.setup({
        capabilities = capabilities,
        cmd = {
          "gopls",
        },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        root_dir = utils.root_pattern("go.work", "go.mod", ".git"),
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
          },
        },
      })

      --keymaps
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
     vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
      vim.keymap.set("n", "<space>fd", vim.diagnostic.open_float, {})
      vim.keymap.set("n", "<space>fq", vim.diagnostic.setloclist, {})
    end,
  },
}
