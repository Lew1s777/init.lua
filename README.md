my neovim config
===
```

 __  __         _   _ _____ _____     _____ __  __ ____   ____ 
|  \/  |_   _  | \ | | ____/ _ \ \   / /_ _|  \/  |  _ \ / ___|
| |\/| | | | | |  \| |  _|| | | \ \ / / | || |\/| | |_) | |    
| |  | | |_| | | |\  | |__| |_| |\ V /  | || |  | |  _ <| |___ 
|_|  |_|\__, | |_| \_|_____\___/  \_/  |___|_|  |_|_| \_\\____|
        |___/                                                  
```

installation
---
see [Installation Guide](./document/install.md)

usage
---
see [keybinds && commands](./document/usage.md)

plugin list
---
- plugin manager
  - [folke/lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager
- visual
  - [treesitter](https://github.com/nvim-treesitter) highlight (also required by fun/cellular-animation)
    - [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground) treesitter debug
    - [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) configurations and abstraction layer
    - [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) show code context
  - [Lew1s777/nvim-lines.lua](https://github.com/Lew1s777/nvim-lines.lua) statusline & tabline
  - [shellRaining/hlchunk.nvim](https://github.com/shellRaining/hlchunk.nvim) indent line
  - [Bekaboo/dropbar.nvim](https://github.com/Bekaboo/dropbar.nvim) (requrie neovimv0.10.0 & latest nerdfont) drop bar above
  - [petertriho/nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) scroll bar
  - [Lew1s777/nvim-notify](https://github.com/Lew1s777/nvim-notify) notify
  - [gelguy/wilder.nvim](https://github.com/gelguy/wilder.nvim) command bar
  - [yamatsum/nvim-cursorline](https://github.com/yamatsum/nvim-cursorline) cursorline
  - (disabled)[mhinz/vim-startify](https://github.com/mhinz/vim-startify) start screen
- dev
  - [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) conquer of completion
  - [SirVer/ultisnips](https://github.com/SirVer/ultisnips) snippets support
  - [ggandor/leap.nvim](https://github.com/ggandor/leap.nvim) leap
  - debug
    - (not finished)[puremourning/vimspector](https://github.com/puremourning/vimspector) debug
- input
  - [yaocccc/vim-fcitx2en](https://github.com/yaocccc/vim-fcitx2en) fcitx5 input switching
- call
  - [theniceboy/joshuto.nvim](https://github.com/theniceboy/joshuto.nvim) file manager
  - [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) git
  - (disabled)[github/copilot.vim](https://github.com/github/copilot.vim) ai support
  - [ibhagwan/fzf-lua](https://github.com/ibhagwan/fzf-lua) fzf support
- ft
  - markdown
    - [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) markdown preview
    - [mzlogin/vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc) toc link generator
    - [dhruvasagar/vim-table-mode](https://github.com/dhruvasagar/vim-table-mode) table generator
- help
  - [folke/which-key.nvim](https://github.com/folke/which-key.nvim) keybind help
  - [yianwillis/vimcdoc](https://github.com/yianwillis/vimcdoc) additional doc
- fun
  - [Eandrju/cellular-automaton.nvim](https://github.com/Eandrju/cellular-automaton.nvim) fun
- startuptime
  - [dstein64/vim-startuptime](https://github.com/dstein64/vim-startuptime) nvim startuptime

GUI client
---
- [neovide](https://neovide.dev/index.html)

Provideing impressive animation.

tips
---
see [tips](./document/tip.md)

troublem shooting
---
see [troublem shooting](./document/debug.md)

todo
---

- switch to lua ✓
- switch to lazy.nvim ✓
  - vimspector ✗
- neovide support ✓
- document ✓
- maintain script ✗
