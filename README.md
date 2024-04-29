# Custom Neovim Configuration

This repository contains my personal Neovim configurations that I use on a daily basis for programming, with a particular focus on Ruby and JavaScript development. The configurations are based on [NvChad](https://github.com/NvChad/NvChad), an open-source Neovim configuration framework, and are tailored to streamline my coding workflow and enhance productivity.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Features](#features)
- [Usage](#usage)
- [Custom Key Bindings](#custom-key-bindings)
- [Plugins](#plugins)
- [Contributing](#contributing)
- [License](#license)

## Prerequisites

Before installing these configurations, you must have NvChad installed. Here are the steps to install NvChad:

```bash
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
nvim +'hi NormalFloat guibg=#1e222a' +PackerSync
```

For more detailed instructions, visit the [NvChad Wiki](https://github.com/NvChad/NvChad/wiki).

## Installation

To use these configurations on top of NvChad:

1. Ensure you have Neovim and NvChad installed.
2. Clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/dmolinae/nvim-config.git ~/.config/nvim/lua/custom
```

## Features

- **Ruby and JavaScript Focused**: Optimized for Ruby and JavaScript development on top of the NvChad framework.
- **Linting and Formatting**: Integrated with tools like RuboCop and ESLint for code quality.
- **Auto-completion**: Enhanced auto-completion support for a seamless coding experience.
- **Git Integration**: Git commands and status display within Neovim.
- **Efficient Navigation**: File and symbol navigation shortcuts for quick access.

## Usage

After installing NvChad and these custom configurations, Neovim will load everything the next time it is launched. You can start Neovim by simply typing `nvim` in your terminal.

## Custom Key Bindings

This configuration includes custom key bindings to improve efficiency:

- `<leader>r`: Run current Ruby file
- `<leader>j`: Run current JavaScript file
- `<leader>l`: Toggle linter warnings/errors
- `<leader>f`: Format current file
- `<leader>g`: Git commands menu

Please refer to the `keybindings.vim` file for a complete list of custom key bindings.

## Plugins

A list of plugins used in this configuration, on top of those provided by NvChad:

- [deoplete.nvim](https://github.com/Shougo/deoplete.nvim) - Auto-completion plugin
- [ale](https://github.com/dense-analysis/ale) - Asynchronous linting and fixing
- [fugitive.vim](https://github.com/tpope/vim-fugitive) - Git wrapper
- [nerdtree](https://github.com/preservim/nerdtree) - File system explorer

See the `plugins.vim` file for more details and additional plugins.

## License

This Neovim configuration is open-sourced software licensed under the [MIT license](LICENSE.md).

