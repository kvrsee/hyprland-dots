return {
  {
    "LazyVim/LazyVim",
    opts = {
      news = {
        headlines = false,
      },
      extras = {
        "lazyvim.plugins.extras.lang.typescript",
        "lazyvim.plugins.extras.lang.python",
        "lazyvim.plugins.extras.lang.json",
        "lazyvim.plugins.extras.lang.yaml",
        "lazyvim.plugins.extras.lang.markdown",
        "lazyvim.plugins.extras.lang.docker",
        "lazyvim.plugins.extras.lang.terraform",
        "lazyvim.plugins.extras.lang.html",
        "lazyvim.plugins.extras.lang.css",
        "lazyvim.plugins.extras.lang.tailwind",
        "lazyvim.plugins.extras.lang.rust",
        "lazyvim.plugins.extras.lang.go",
        "lazyvim.plugins.extras.lang.clangd",
        "lazyvim.plugins.extras.lang.prisma",
        "lazyvim.plugins.extras.ui.edgy",
        "lazyvim.plugins.extras.editor.refactoring",
        "lazyvim.plugins.extras.util.project",
      },
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,

      color_overrides = {
        mocha = {
          base = "#1E1E2E",
          text = "#CDD6F4",

          crust = "#11111B",
          mantle = "#181825",

          surface0 = "#313244",
          surface1 = "#45475A",
          surface2 = "#585B70",

          overlay0 = "#6C7086",
          overlay1 = "#7F849C",
          overlay2 = "#9399B2",

          red = "#F38BA8",
          green = "#A6E3A1",
          yellow = "#F9E2AF",
          blue = "#89B4FA",
          pink = "#F5C2E7",
          teal = "#94E2D5",
        },
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "lua-language-server",
        "pyright",
        "ruff-lsp",
        "typescript-language-server",
        "eslint-lsp",
        "html-lsp",
        "css-lsp",
        "tailwindcss-language-server",
        "json-lsp",
        "yaml-language-server",
        "taplo",
        "marksman",
        "rust-analyzer",
        "gopls",
        "dockerfile-language-server",
        "terraform-ls",
        "prisma-language-server",
        "clangd",

        "stylua",
        "prettierd",
        "eslint_d",
        "shfmt",
        "rustfmt",
        "gofumpt",
        "goimports",
        "taplo",
        "black",
        "isort",
        "clang-format",

        "shellcheck",
        "ruff",
        "eslint_d",
        "yamllint",
        "markdownlint",
        "hadolint",
      })
    end,
  },

  {
    "mfussenegger/nvim-lint",
    event = "LazyFile",
    opts = {
      linters_by_ft = {
        lua = { "selene" },
        python = { "ruff" },
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        vue = { "eslint_d" },
        html = { "htmlhint" },
        css = { "stylelint" },
        scss = { "stylelint" },
        yaml = { "yamllint" },
        markdown = { "markdownlint" },
        sh = { "shellcheck" },
        dockerfile = { "hadolint" },
        terraform = { "tflint" },
        ["*"] = { "typos" },
      },

      linters = {
        typos = {
          condition = function(ctx)
            return vim.fs.find({ "typos.toml", ".typos.toml" }, {
              path = ctx.filename,
              upward = true,
            })[1]
          end,
        },
      },
    },
  },

  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        vue = { "prettierd" },
        html = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        json = { "prettierd" },
        jsonc = { "prettierd" },
        yaml = { "prettierd" },
        markdown = { "prettierd" },
        sh = { "shfmt" },
        rust = { "rustfmt" },
        go = { "gofumpt", "goimports" },
        toml = { "taplo" },
        terraform = { "terraform_fmt" },
        cpp = { "clang-format" },
        c = { "clang-format" },
        ["*"] = { "trim_whitespace" },
      },

      formatters = {
        prettierd = {
          prepend_args = {
            "--tab-width",
            "2",
            "--single-quote",
            "true",
            "--trailing-comma",
            "es5",
            "--print-width",
            "100",
            "--semi",
            "true",
          },
        },

        shfmt = {
          prepend_args = { "-i", "2", "-ci", "-sr" },
        },

        rustfmt = {
          prepend_args = { "--edition", "2021" },
        },

        stylua = {
          prepend_args = {
            "--indent-type",
            "Spaces",
            "--indent-width",
            "2",
            "--column-width",
            "120",
          },
        },

        black = {
          prepend_args = {
            "--line-length",
            "88",
            "--target-version",
            "py38",
          },
        },

        ["clang-format"] = {
          prepend_args = { "--style=Google" },
        },
      },
    },
  },
}
