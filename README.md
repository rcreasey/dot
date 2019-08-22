# dotfiles

Boxing up my environment for wherever I go (focusing mostly on my macOS workstations).  I am to make this as multiplatform as possible, but we'll see how that ends up going. 

This isn't my first attempt at doing this, but this time I'm trying to use some of the kung-fu learned from places like [r/unixporn](https://reddit.com/r/unixporn).

Gonna try to make this managed by [GNU stow](https://www.gnu.org/software/stow/).

## Bootstrapping

```
❯ git clone https://github.com/rcreasey/dot ~/.dotfiles && cd ~/.dotfiles && make install
```