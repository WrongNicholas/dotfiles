-- ~/.config/nvim/lsp/csharp.lua
return {
  cmd = { "csharp-ls" },
  
  filetypes = { "cs", "csx", "cake" },

  root_dir = function(bufnr, on_dir)
    
    local fname = vim.api.nvim_buf_get_name(bufnr)
    if fname == nil or fname == "" then
      return
    end

    local start = vim.fs.dirname(fname)

    local hit = vim.fs.find({ "*.sln", "*.csproj", "global.json", ".git" },
      { upward = true, path = start })[1]

    local dir = (hit and vim.fs.dirname(hit)) or start

    on_dir(dir)
  end,
}
