# exists

Got tired of doing `xargs -I {} sh -c "[ -e \"{}\" ] && echo \"{}\""` to check if a files exist while trying to script things.

This receives paths from standard input, and prints any that exist; Works for files, directories and links.

### Install

```
git clone https://github.com/seanbreckenridge/exists
cd exists
make install
```

### Usage

```
Usage:	exists [-v] [-h]
Read filepaths from STDIN, prints ones that exist to STDOUT

  -h		show list of command-line options
  -v		inverts output, prints filenames that don't exist
```

### Example

```shell
$ ls
exists  exists.1  exists.c  LICENSE  Makefile  README.md
$ { ls -1; echo 'non_existent_file' } | exists
exists
exists.1
exists.c
LICENSE
Makefile
README.md
{ ls -1; echo 'non_existent_file' } | exists -v  # print files that don't exist
non_existent_file
```
