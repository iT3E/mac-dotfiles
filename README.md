# Chezmoi Dotfiles

This is my dotfiles repository that is managed by Chezmoi and Ansible

## Usage

- Preferably make all changes within `chezmoi`, i.e.:

```bash
1.  nvim ~/local/share/chezmoi
2.  #  ..make changes to files and exit nvim
3.  chezmoi apply
4.  #..git operations
```

- If changes are made outside of `chezmoi`, then run:

```bash
chezmoi add ~/.config/nvim/ #..or other file/folder name
```

## Encryption

- [Chezmoi encrypted files should only require a passphrase entered once after following this guide](https://www.chezmoi.io/user-guide/frequently-asked-questions/encryption/)
- The following command was used to manually put the private key `key.txt`
  into the `.config` directory:

```bash
chezmoi age decrypt --output "~/.config/chezmoi/key.txt" --passphrase key.txt.age > ~/.config/chezmoi/key.txt
```

- Encrypted files must be managed outside of `~/.local/share/chezmoi`,then, once modified, added back using `chezmoi add --encrypt ~/.config/file_name`

## Tmux

The tmux plugin manager is kept in these dot files. To initialize all other plugins, run the following in tmux:
`<c-a><shift-I>`
