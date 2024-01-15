return {
    {
"vimwiki/vimwiki",
    init = function()
	vim.g.vimwiki_list = {
		{
		    path = '~/vimwiki/',
		    syntax = 'markdown',
		    ext = '.md'
		},
		{
		    path = '~/Nextcloud/nvimwiki/',
		    syntax = 'markdown',
		    ext = '.md'
		},
	    }
    end },{
"iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function() vim.fn["mkdp#util#install"]() end,
    init_md = function ()
    	vim.g.mkdp_browser = '/bin/firefox'
	vim.g.mkdp_echo_preview_url = 1
    end
    },
}
