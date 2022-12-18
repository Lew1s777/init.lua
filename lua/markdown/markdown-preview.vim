"run below after install Markdownplug
":call mkdp#util#install_sync()

"MarkdownPreview(disabled on server)-----------------------------------------------
nmap m <Plug>MarkdownPreviewToggle
let g:mkdp_browser = 'chromium'

