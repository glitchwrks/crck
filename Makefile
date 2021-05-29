PREFIX=/usr
BINDIR=$(PREFIX)/bin
MANDIR=$(PREFIX)/man/man1

crck: crck.c
	cc -o crck crck.c

install: crck
	mkdir -p $(DESTDIR)$(BINDIR)
	mkdir -p $(DESTDIR)$(MANDIR)
	install -m 755 crck $(DESTDIR)$(BINDIR)
	install -m 644 crck.1 $(DESTDIR)$(MANDIR)

uninstall:
	rm -f $(BINDIR)/crck $(MANDIR)/crck.1

clean:
	rm -f crck
