  return {
    {'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.api.nvim_set_keymap('n', '<leader>fa', '<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<CR>', { noremap = true, silent = true })
      vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      --vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
    end
    },
    {
'nvim-telescope/telescope-ui-select.nvim',
      config=function()
        require("telescope").setup {
          extensions = {
            ["ui-select"] = {
              require("telescope.themes").get_dropdown {
              }
            }
          }
        }
        require("telescope").load_extension("ui-select")
      end
    }
  }
