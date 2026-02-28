# AstroNvim Template

**NOTE:** This is for AstroNvim v4+

A template for getting started with [AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Create a new user repository from this template

Press the "Use this template" button above to create a new repository to store your user configuration.

You can also just clone this repository directly if you do not want to track your user configuration in GitHub.

#### Clone the repository

```shell
git clone https://github.com/hellovuong/astronvim_config ~/.config/nvim
```

#### Start Neovim

```shell
nvim
```
## Clangd for ARM

```shell
apt-get install clangd jq
mkdir -p ~/.local/share/nvim/mason/packages/clangd/mason-schemas
cd ~/.local/share/nvim/mason/packages/clangd
curl https://raw.githubusercontent.com/clangd/vscode-clangd/master/package.json \
    | jq .contributes.configuration > mason-schemas/lsp.json
echo '{"schema_version":"1.1","primary_source":{"type":"local"},"name":"clangd","links":{"share":{"mason-schemas/lsp/clangd.json":"mason-schemas/lsp.json"}}}' \
    > mason-receipt.json
```
