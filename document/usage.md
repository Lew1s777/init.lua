Useage
===

Keybind && Command to know

<!-- markdown-toc GFM -->

* [Keybind](#keybind)
* [Command](#command)

<!-- markdown-toc -->

Keybind
---
- Here assumes that you understand the logic of using vim, such as switching between normal mode and insert mode

- This keybind is designed for colemak layout,if ur using qwerty layout,use lua/keymapd.lua.

- The keys shown here may not be up to date,Please refer to lua/keymap.lua if you have any questions.(The key with "Class -> Function" is the configuration of the plug-in, you can find the plug-in configuration file that provides the key according to the class).

- my leader key is <kbd>space</kbd>

- I added the corresponding vanilla keys to the table, so that you can use it as reminder even if you do not use my configuration.

- Auto complete function I am using is provided by coc.nvim,the vanilla keymap I give is the default vim build-in auto complete function.There are some differences between the two.

- Do not use <kbd>⌃Control</kbd><kbd>c</kbd> or <kbd>⌃Control</kbd><kbd>z</kbd>,they are already occupied by shell

- in vim,cut=delete

|keymap|function|vanilla keymap|
|-|-|-|
|<kbd>⇧Shift</kbd><kbd>q</kbd>|quit&save|<kbd>:</kbd><kbd>w</kbd><kbd>q</kbd>|
|<kbd>⌃Control</kbd><kbd>q</kbd>|quit|<kbd>:</kbd><kbd>q</kbd>|
|<kbd>?</kbd>|replace|<kbd>:%s/old/new/gc</kbd>|
|<kbd>/</kbd>|search|<kbd>/</kbd>|
|<kbd>:</kbd>|command|<kbd>:</kbd>|
|<kbd>⇥Tab</kbd>|dev->auto complete|<kbd>⌃Control</kbd><kbd>u</kbd>
|<kbd>⎋Esc</kbd>|normal mode|<kbd>⎋Esc</kbd>|
|<kbd>d</kbd>|leap to line|<kbd>g</kbd>|
|<kbd>D</kbd>|leap to last line|<kbd>G</kbd>|
|<kbd>d</kbd><kbd>d</kbd>|leap to first line|<kbd>g</kbd><kbd>g</kbd>|
|<kbd>⎋Esc</kbd>|leap->leap to specific char||
|<kbd>z</kbd>|find forward|<kbd>f</kbd>|
|<kbd>Z</kbd>|find backward|<kbd>F</kbd>|
|<kbd>c</kbd>|copy|<kbd>y</kbd>|
|<kbd>C</kbd>|copy line|<kbd>Y</kbd>|
|<kbd>x</kbd>|cut|<kbd>y</kbd>|
|<kbd>X</kbd>|cut line|<kbd>Y</kbd>|
|<kbd>v</kbd>|paste|<kbd>p</kbd>|
|<kbd>t</kbd>|select(visual mode)|<kbd>v</kbd>|
|<kbd>⇧Shift</kbd><kbd>t</kbd>|select(visual line mode)|<kbd>⇧Shift</kbd><kbd>v</kbd>|
|<kbd>⌃Control</kbd><kbd>t</kbd>|select(visual block mode)|<kbd>⌃Control</kbd><kbd>v</kbd>|
|<kbd>u</kbd>|undo|<kbd>u</kbd>|
|<kbd>p</kbd> or <kbd>g</kbd>|insert mode|<kbd>a</kbd> or <kbd>i</kbd>|
|<kbd>P</kbd> or <kbd>G</kbd>|insert mode & go to start/end of line|<kbd>A</kbd> or <kbd>I</kbd>|
|<kbd>w</kbd> or <kbd>i</kbd>|movekey(↑up)|<kbd>gk</kbd>|
|<kbd>r</kbd> or <kbd>e</kbd>|movekey(↓down)|<kbd>gj</kbd>|
|<kbd>a</kbd> or <kbd>n</kbd>|movekey(←left)|<kbd>gh</kbd>|
|<kbd>s</kbd> or <kbd>o</kbd>|movekey(→right)|<kbd>gl</kbd>|
|<kbd>⇧Shift</kbd><kbd>[movekey]</kbd>|move by 1word/7line|[see lua/keymap.lua]|
|<kbd>⌃Control</kbd><kbd>[movekey]</kbd>|move to limit|[see lua/keymap.lua]|
|<kbd>space</kbd><kbd>[movekey]</kbd>|focus split screen|<kbd>⌃Control</kbd><kbd>w</kbd><kbd>[movekey]</kbd>|
|<kbd>space</kbd><kbd>⇧Shift</kbd><kbd>[movekey]</kbd>|split|[see lua/keymap.lua]|
|<kbd>space</kbd><kbd>⌃Control</kbd><kbd>[movekey]</kbd>|move cunline|<kbd>⌃Control</kbd><kbd>w</kbd><kbd>t</kbd><kbd>⌃Control</kbd><kbd>w</kbd><kbd>⇧Shift</kbd><kbd>h/k</kbd>|
|<kbd>⇧Shift</kbd><kbd>f</kbd>|new file|<kbd>:tabe</kbd><kbd>↩Enter</kbd>|
|<kbd>⌃Control</kbd><kbd>p</kbd>|previous file|<kbd>:-tabnext</kbd><kbd>↩Enter</kbd>
|<kbd>⌃Control</kbd><kbd>g</kbd>|next file|<kbd>:+tabnext</kbd><kbd>↩Enter</kbd>
|<kbd>-</kbd>|number--|<kbd>⌃Control</kbd><kbd>x</kbd>
|<kbd>-</kbd>|number++|<kbd>⌃Control</kbd><kbd>a</kbd>
|<kbd>space</kbd><kbd>c</kbd>|reverse letter case|<kbd>~</kbd>
|<kbd>M</kbd>|ft.md->markdown preview|<kbd>:MarkdownPreview</kbd><kbd>↩Enter</kbd>
|<kbd>f</kbd>|call->joshuto filemanager|<kbd>:Joshuto</kbd><kbd>↩Enter</kbd>
|<kbd>⌃Control</kbd><kbd>f</kbd>|call->fzf interface|<kbd>:FzfLua</kbd><kbd>↩Enter</kbd>
|<kbd>space</kbd><kbd>t</kbd>|dev->translate|``<Plug>(coc-translator-p)``|
|<kbd>space</kbd><kbd>r</kbd><kbd>r</kbd>|fun->rain|<kbd>:CellularAutomation</kbd><kbd>space</kbd><kbd>make_it_rain</kbd><kbd>↩Enter</kbd>
|<kbd>space</kbd><kbd>g</kbd><kbd>g</kbd>|fun->gameoflife|<kbd>:CellularAutomation</kbd><kbd>space</kbd><kbd>game_of_life</kbd><kbd>↩Enter</kbd>

Command
---
press <kbd>:</kbd> to input command

- ``Lazy`` lazy.nvim the plugin manager
- ``CocUpdateSync`` update coc plugins
- ``e`` or ``edit`` edit another file
- ``FzfLua`` fzf the fuzzy file finder
- ``GenTocGFM`` markdown toc generate
- ``Joshuto`` call joshuto the file manager
- ``LazyGit`` call lazygit
- ``CellularAutomation [type]`` fun animation
