vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
  function()
    --Plugin Manager
    use {"wbthomason/packer.nvim", opt = true}
    --Colorscheme
    use "tomasiser/vim-code-dark"
    use "folke/tokyonight.nvim"
    use "sainnhe/everforest"
    use "Mofiqul/vscode.nvim"
    use "nvim-treesitter/nvim-treesitter"
    --Autocomplete
    use "neovim/nvim-lspconfig"
    use "kabouzeid/nvim-lspinstall"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/nvim-compe"
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-path"
    use "hrsh7th/vim-vsnip"
    use "windwp/nvim-autopairs"
    use "norcalli/nvim-colorizer.lua"
    use "mattn/emmet-vim"
    use "mhartington/formatter.nvim"
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("trouble").setup {}
      end
    }
    --File Tree
    use {
      "kyazdani42/nvim-tree.lua",
      requries = "kyazsani42/nvim-web-devicons"
    }

    --Telescope
    use {
      "nvim-telescope/telescope.nvim",
      requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}
    }
    --Statusline
    use {
      "glepnir/galaxyline.nvim",
      branch = "main",
      config = function()
        require "my_statusline"
      end,
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }
    use {"akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons"}
    --Other
    use {
      "lewis6991/gitsigns.nvim",
      requires = {
        "nvim-lua/plenary.nvim"
      }
    }
    use {"TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim"}
    use "sindrets/diffview.nvim"
    use "numToStr/Comment.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "ryanoasis/vim-devicons"
    use "lukas-reineke/indent-blankline.nvim"
    use "akinsho/toggleterm.nvim"
  end
)
