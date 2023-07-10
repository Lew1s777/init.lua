Installation Guide
---

Manually
---
Dependency

- ``nvim`` of course(I'm currently using ``aur/neovim-nightly``)

- This config require ``pynvim``,install it with (your system shoud have ``python3`` configured before using this command)
```
pip install pynvim
```
or use ``extra/python-pynvim``
- optional require archlinuxcn/``vim-fcitx`` for better input method switching
- optional require aur/``joshuto-git`` for file manager
- optional requrie extra/``lazygit``

Install
- save your old config(if you have)
```
mv $HOME/.config/nvim $HOME/.config/nvim-old
```
- clone this repo
```
git clone --depth=1 https://github.com/Lew1s777/init.lua
cd init.lua
```
- copy directory nvim to ``~/.config/nvim``
```
cp -r ./nvim $HOME/.config/nvim
```
- start your neovim to auto install nvim plugins(make sure you have accsess to github)
```
nvim
```
