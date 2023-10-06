require('telescope').setup({
	pickers = {
		find_files = {
			find_command = {
				'fd',
				'--type',
				'f',
				'--color=never',
				'--hidden',
				'--follow',
				'-E',
				'.git/*',
			},
		},
		git_files = {
			find_command = {
				'fd',
				'--type',
				'f',
				'--color=never',
				'--hidden',
				'--follow',
				'-E',
				'.git/*',
			},
		},
		grep_string = {
			find_command = {
				'fd',
				'--type',
				'f',
				'--color=never',
				'--hidden',
				'--follow',
				'-E',
				'.git/*',
			},
		},
		live_grep = {
			find_command = {
				'fd',
				'--type',
				'f',
				'--color=never',
				'--hidden',
				'--follow',
				'-E',
				'.git/*',
			},
		},
	},
	extensions = {
    	fzf = {
			fuzzy = true,                    -- false will only do exact matching
			override_generic_sorter = true,  -- override the generic sorter
			override_file_sorter = true,     -- override the file sorter
			case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
										   -- the default case_mode is "smart_case"
    	},
		file_browser = {
			theme = "dropdown",
			hijack_netrw = true,
			hidden = true,
			previewer = true,
		},
  	}
})

require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
