CRCK -- Unix CRC16 File Checksum Calculator
===========================================

This utility is equivalent to the CP/M `CRCK` utility, which computes file checksums. It was often used with BBSes, and many old BBS file lists include compatible checksums.

To build the current version of `crck` just run `make`. `make install` will install both the binary and the manpage.

### License

Original source is copyright original authors (Ben Goldfarb, Computer Development, Inc. -- see source code). Glitch Works, LLC modifications are released under the GNU GPL v3 and are (c) 2021 Glitch Works, LLC. See LICENSE for a copy of the GNU GPL v3.

### Files

The `orig` subdirectory contains the original code from the UNIX-C user group archive:

* `crck.c.orig` is the original, unmodified source code, as downloaded from the UNIX-C user group archive.
* `segfault.patch` just patches the segfault issue with the original code, and will generate warnings on a modern C compiler.
* `gw_cleanup.patch` contains all of the current Glitch Works, LLC changes against the original C code. It currently just fixes all warnings.