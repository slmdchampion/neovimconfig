return {
"iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function() vim.fn["mkdp#util#install"]() end,
    init = function ()
    	vim.g.mkdp_browser = '/usr/bin/brake -new-window'
	vim.g.mkdp_echo_preview_url = 1
	vim.g.mkdp_theme = 'dark'
        vim.g.mkdp_combine_preview = 1
    end
    }
