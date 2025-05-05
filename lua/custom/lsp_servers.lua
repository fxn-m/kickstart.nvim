return {
  tsserver = {},
  rust_analyzer = {
    settings = {
      ['rust-analyzer'] = {
        cargo = { allFeatures = true },
        checkOnSave = { command = 'clippy' },
      },
    },
  },
}
