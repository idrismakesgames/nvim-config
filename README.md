# nvim-config

My personal Neovim setup built on [LazyVim](https://lazyvim.github.io). Aimed at C and TypeScript/MERN development on Windows 11 with WezTerm.

---

## Theme

Rose Pine, chosen to blend with my WezTerm gradient background. No tab bar, no title bar decorations — just the terminal.

---

## Languages

| Language | LSP | Formatter | Linter |
|---|---|---|---|
| TypeScript / JavaScript | vtsls | Biome | Biome |
| CSS / JSON | — | Biome | Biome |
| C / C++ | clangd | clang-format | clangd |
| Lua | — | stylua | — |
| Markdown | marksman | mdformat | markdownlint |
| CMake | cmake-language-server | — | — |
| Tailwind CSS | tailwindcss-language-server | — | — |

No Prettier anywhere. Biome covers the JS/TS/CSS/JSON side, mdformat covers Markdown.

---

## Keymaps

On top of LazyVim's defaults:

| Key | Mode | What it does |
|---|---|---|
| `gh` | Normal | First non-blank character |
| `gl` | Normal | End of line |
| `<C-u>` | Normal | Scroll up, keep cursor centred |
| `<C-d>` | Normal | Scroll down, keep cursor centred |
| `n` / `N` | Normal | Next/prev search result — direction-aware, opens folds, centres screen |
| `<leader>p` | Visual | Paste over selection without clobbering the clipboard |

`n`/`N` extend LazyVim's existing direction-aware remap, just adding `zz` on top.

---

## Completion

blink.cmp with the `enter` preset. `Ctrl-N`/`Ctrl-P` to cycle, `Enter` to confirm. Documentation pops up automatically after 200 ms.

---

## Extras enabled

- `lang.typescript` + `lang.typescript.vtsls` + `lang.typescript.biome`
- `lang.clangd`
- `lang.cmake`
- `lang.json`
- `lang.markdown`
- `lang.tailwind`

---

## Other things worth noting

- Buffer tab bar (`bufferline.nvim`) is disabled — `<leader>,` or `<leader>fb` to switch buffers
- Snacks picker is the default (no fzf-lua)
- System clipboard works out of the box via LazyVim's `unnamedplus` default
- Kitty graphics protocol is on in WezTerm for image previews

---

## Requirements

Tools installed via Scoop, npm, or pip before this config makes sense:

```
scoop install neovim nodejs python luarocks git ripgrep fd imagemagick ghostscript tectonic
pip install pynvim mdformat mdformat-gfm
npm install -g @mermaid-js/mermaid-cli
```

Mason handles the LSP servers and formatters from inside Neovim.

---

## Structure

```
~/.config/nvim/
├── lazyvim.json              # enabled extras
├── lua/
│   ├── config/
│   │   ├── options.lua
│   │   ├── keymaps.lua
│   │   └── lazy.lua
│   └── plugins/
│       ├── colorscheme.lua   # rose-pine
│       ├── completion.lua    # blink.cmp
│       ├── formatting.lua    # conform overrides
│       └── ui.lua            # bufferline off
└── stylua.toml
```
