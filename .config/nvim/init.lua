if vim.fn.has("win32") == 1 then
  vim.opt.shell = "bash.exe"
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellredir = ">%s 2>&1"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
  vim.opt.shellpipe = "2>&1| tee"
end

-- Use spaces instead of tabs
vim.opt.expandtab = true

-- A tab character appears as 4 spaces
vim.opt.tabstop = 4

-- Indentation uses 4 spaces
vim.opt.shiftwidth = 4

-- Pressing Tab in Insert mode inserts 4 spaces
vim.opt.softtabstop = 4

-- Optional: copy indentation from the current line
vim.opt.smartindent = true

-- Markdown renderer
vim.pack.add({
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/nvim-mini/mini.nvim',            -- if you use the mini.nvim suite
    -- 'https://github.com/nvim-mini/mini.icons',        -- if you use standalone mini plugins
    -- 'https://github.com/nvim-tree/nvim-web-devicons', -- if you prefer nvim-web-devicons
    'https://github.com/MeanderingProgrammer/render-markdown.nvim',
})
require('render-markdown').setup({})


-- LSP Configs
vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
};

vim.lsp.enable('wgsl_analyzer');
