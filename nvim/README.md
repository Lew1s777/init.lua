My Neovim RC Readme
===
```
 _   _ _____ _____     _____ __  __ 
| \ | | ____/ _ \ \   / /_ _|  \/  |
|  \| |  _|| | | \ \ / / | || |\/| |
| |\  | |__| |_| |\ V /  | || |  | |
|_| \_|_____\___/  \_/  |___|_|  |_|

```

Dependencies
---
- My config use packer as plugin manager.To Install [packer](https://github.com/wbthomason/packer.nvim) use the command below
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

- This config require ```pynvim```,install it with (your system shoude have ```python3``` configured before using this command)
```
pip install pynvim
```

Troublem shooting
---
- If vim suddenly becomes jammed, try running the following command in shell.
```
rm ~/.local/share/nvim/shada/main.shada
```


- Remove folder ``` plugin``` if it cause error.Packer will regenerate this folder.

- Use command below to debug keymap issues
```
:verbose map <the map have issue>
```

Tips
---
- If you use root permission,you can create a link to ```/root/.config.nvim``` so that you won't have two copy of config file and your changes will directly apply to root user.
