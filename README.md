# exists

Got tired of doing `xargs -I {} sh -c "[ -f \"{}\" ] && echo \"{}\""` to check if a file exists while trying to script things.

### Install

```
git clone https://github.com/seanbreckenridge/exists
cd exists
sudo make install
```

### Usage

```
Usage:	exists [-v] [-h]
Read filenames from STDIN, prints files that exist to STDOUT

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
