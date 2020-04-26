# exists

Got tired of doing `xargs -I {} sh -c "[ -f \"{}\" ] && echo \"{}\""` to check if a file exists while trying to script things.

```
Usage:	exists [-v] [-h]
Read filenames from STDIN, prints files that exist to STDOUT

  -h		show list of command-line options
  -v		inverts output, prints filenames that don't exist
```
