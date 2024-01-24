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
	vim.g.vimwiki_markdown_link_ext =  1
    end },
}
