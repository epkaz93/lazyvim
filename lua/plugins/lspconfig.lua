return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "standard",
                diagnosticSeverityOverrides = {
                  -- reportReturnType = "none",
                  reportOptionalMemberAccess = "none",
                },
              },
            },
          },
        },
      },
    },
  },
}
