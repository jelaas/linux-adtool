CC=gcc
CFLAGS=-Wall -DSYSCONFDIR=\"/etc\" -DLDAP_DEPRECATED
LDLIBS=-lldap -llber

adtool:	adtool.o active_directory.o

clean:
	rm -f *.o adtool
install:
	mkdir -p $(DESTDIR)/bin
	cp adtool $(DESTDIR)/bin
	cp doc/man/man1/adtool.1 $(DESTDIR)/usr/share/man/man1
	cp adtool.cfg.dist $(DESTDIR)/etc/
