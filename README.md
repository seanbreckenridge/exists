# exists

Got tired of doing `xargs -I {} sh -c "[ -e \"{}\" ] && echo \"{}\""` to check if a files exist while trying to script things.

This works for files, directories and links.

### Install

```
git clone https://gitlab.com/seanbreckenridge/exists
cd exists
sudo make install
```

### Usage

```
Usage:	exists [-v] [-h]
Read filepaths from STDIN, prints ones that exist to STDOUT

  -h		show list of command-line options
  -v		inverts output, prints filenames that don't exist
```

### Example

```
$ { ls -1; echo 'doesnt exist' } | exists
exists
exists.c
Makefile
README.md
```
