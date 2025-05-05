if vim.g.vscode then
  return {
    -- 禁用插件示例
    { "mini.ai", enabled = false },
    { "mini.pairs", enabled = false },
    { "nvim-treesitter", enabled = false },
    { "nvim-treesitter-textobjects", enabled = false },
    { "ts-comment.nvim", enabled = false },
    -- 可以添加更多插件
  }
else
  return {}
end
