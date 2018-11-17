VERSION=2.0
HOMEDIR=/home/user
DESTDIR=/opt/buildtools

INSTALL=install
CP=cp
SED=sed

install:
	echo "Error: you must sepcify a system type to install."
	exit 1

install-skeleton:
	$(INSTALL) -d $(DESTDIR)

install-shared: install-skeleton
	$(CP) shared/* $(DESTDIR)/
	
