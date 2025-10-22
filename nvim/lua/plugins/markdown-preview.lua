-- For `plugins/markview.lua` users.
return
{
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["call mkdp#util#install"]() end,
};
