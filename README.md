# archpkgs

Mechanics to fetch package sources for all the [Arch Linux][]
[packages][packages-maintained-by-me] I maintain or co-maintain.

[Arch Linux]: https://archlinux.org/
[packages-maintained-by-me]: https://archlinux.org/packages/?sort=&q=&maintainer=carsme&flagged=

## Usage

To fetch (or update) the package repositories, run:

```sh
make sync
```

To check if new upstream versions are available, run:

```sh
make check-versions
```
