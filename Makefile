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

install-common: install-skeleton
	$(CP) common/* $(DESTDIR)/
	
install-staging-server: install-common
	$(CP) staging-server/home/* $(HOMEDIR)/
	$(CP) staging-server/bin/* $(DESTDIR)/
	$(SED) -i $(DESTDIR)/config -e "s@%HOMEDIR%@$(HOMEDIR)@g"
	$(SED) -i $(DESTDIR)/config -e "s@%VERSION%@$(VERSION)@g"

