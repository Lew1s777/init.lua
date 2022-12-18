-- This file can be loaded by calling `lua require('plugins')` from your init.vim

vim.cmd [[packadd packer.nvim]]
-- Only required if you have packer configured as `opt`


return require('packer').startup({
   function(use)
      -- Packer can manage itself
      use 'wbthomason/packer.nvim'

      -- completation/coc
      require('coc/coc')
      use {'neoclide/coc.nvim', branch = 'release'}
      --use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}            --build coc from sourcecode

      ----file manager
      --use 'scrooloose/nerdtree'

      -- status line
      use 'liuchengxu/eleline.vim'

      --markdown
      require('markdown/markdown-preview')
      use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview', ft = 'markdown'}
      use 'mzlogin/vim-markdown-toc'

      --chinese doc
      use 'yianwillis/vimcdoc'

      --which key
      use 'folke/which-key.nvim'

      --fcitx5 switch
      use { 'yaocccc/vim-fcitx2en', event = 'InsertLeavePre' }                                          --require vim-fcitx

      ----github copilot
      --require('pack/copilot').config()
      --use { 'github/copilot.vim', config = "require('pack/copilot').setup()", event = 'InsertEnter' }

      ----lazygit
      --use 'kdheepak/lazygit.nvim'
   end,


   config = {
      clone_timeout = false,
      depth = 1
      --default_url_format = 'https://github.com/%s'                                                    -- Lua format string used for "aaa/bbb" style plugins
   },
})

