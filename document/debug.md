Troublem shooting
===

- If vim suddenly becomes jammed, try running the following command in shell.
```
rm ~/.local/share/nvim/shada/main.shada
```


- Remove folder ``` plugin``` if it cause error.Packer will regenerate this folder.

- Use command below to debug keymap issues
```
:verbose map <the map have issue>
```
