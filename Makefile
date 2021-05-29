PREFIX=/usr
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/man/man1

crck: crck.c
	cc -o crck crck.c

install: crck
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 755 crck $(BINDIR)
	install -m 644 crck.1 $(MANDIR)

uninstall:
	rm -f $(BINDIR)/crck $(MANDIR)/crck.1

clean:
	rm -f crck
