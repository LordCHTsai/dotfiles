# Installation

## NEOVIM
  1. Install [neovim][5]
  2. Install [vim-plug][2]
  3. Install [fzf][3]
  4. Install [ripgrep][4]
  5. `ln -s "$(pwd)/neovim/config/nvim" ~/.config/nvim`

## ZSH
  1. Install zsh and set to default shell
  2. Install [prezto][1]
  3. Adding following snippet to `~/.zsh`
  ```sh
  # point to the configt file
  if [[ -s "$HOME/dotfiles/zsh/config.zsh" ]]; then
    source "$HOME/dotfiles/zsh/config.zsh"
  fi
  ```
  4. Install [powerline/fonts][6]
  5. Copypasta `prompt_agnoster2lines_setup` to prezto theme
  6. Modify `.zpreztorc` to use `agnoster2lines` theme

[1]: https://github.com/sorin-ionescu/prezto
[2]: https://github.com/junegunn/vim-plug
[3]: https://github.com/junegunn/fzf
[4]: https://github.com/BurntSushi/ripgrep
[5]: https://github.com/neovim/neovim
[6]: https://github.com/powerline/fonts
