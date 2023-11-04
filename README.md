# [b]ook[m]arks

A fork of a fork of a port of [Bashmarks (by Todd Werth)](https://github.com/twerth/bashmarks), a simple command line bookmarking plugin.

## Commands/Usage:

* `bmc` - used to `cd` to the given bookmark directory.

```sh
bmc foo
```

* `bmm` - used to create a new bookmark for your current working directory

```sh
cd 'some_dir'
bmm foo
```

* `bmd` - used to delete a bookmark

```sh
bmd foo
# Or
bmd foo bar baz # Remove multiple bookmarks
# Or
bmd # Will delete current dir from bookmarks
```

* `bml` - prints a list of all saved bookmarks, or print the directory information for a single, specific bookmark

```sh
bml # Show all marks
# Or 
bml foo # Show path to bookmark
```

* `bmn` - cds to the next bookmark — counting the last as the one returned at the last use of `bmn`
```
bmn
```


# How to install

add however you add plugins.  
e.g. `antigen bundle adam-zethraeus/bookmarks`

Note that colorization requires `adam-zethraeus/colors` to be added separately.

restart your shell
