# scommands.vim

The idea of this plugin is to groups your commands via prefixes (e.g. 'SOMETHING\*')
and key maps just prefill this text and shows all options (infact native Vim `<tab>`
competitions).

```
SOMETHINGcmd1   SOMETHINGcmd2   SOMETHINGcmd3   SOMETHINGcmd4
:SOMETHING
```

For now, it is hardcoded into `s` key, but in future it can be generalized.
The native `s` or `S` keys can be replaced by `cl`/`cc`.

## Installation

Install using your favorite package manager, or use Vim's built-in package
support:

    mkdir -p ~/.vim/bundle/vim-scommands
    cd ~/.vim/bundle/vim-scommands
    git clone https://github.com/jaandrle/vim-scommands.git

…also dont't forget adjust wildmmenu (see `:help wildmmenu`), for example:

```
    set runtimepath^=~/.vim/bundle/*
    set wildmenu
    set wildmode=list:longest,list:lastused,list:full
```

## `.vimrc` examples
```
    " https://github.com/kien/ctrlp.vim
    " all CtrlP: https://github.com/kien/ctrlp.vim/blob/564176f01d7f3f7f8ab452ff4e1f5314de7b0981/plugin/ctrlp.vim#L20
    call scommands#map('p', 'CtrlP', 'n')
    " now use: `sp`
```

## TODO
- [ ] better README
- [ ] tbd
