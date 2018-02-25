After a fresh git checkout, you need to run autotools:

```
./autogen.sh
```

To build:

```
V2=version-identifier ./make.sh <target>
```

Build output will be in `release/src-rt/image`.

To see a list of targets:

```
./make.sh help
```
