return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = { "prettier" },
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}
