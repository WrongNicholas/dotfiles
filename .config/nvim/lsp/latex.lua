-- ~/.config/nvim/lsp/tex.lua

return {
  cmd = { "texlab" },
  filetypes = { "tex", "plaintex", "bib" },
  root_markers = {
    ".latexmkrc",
    "latexmkrc",
    ".git",
  },
  settings = {
    texlab = {
      build = {
        onSave = false,
      },
      forwardSearch = {
        executable = "zathura",
        args = {}, -- defined, but never triggered automatically
      },
      chktex = {
        onOpenAndSave = false,
      },
    },
  },
}
