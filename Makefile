INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)

CONF_TARGET = $(PREFIX)/etc/regolith/compton
SCRIPT_TARGET = $(PREFIX)/usr/share/regolith-compositor

all:
	@echo "Nothing to do"

install:
	$(INSTALL) -m0644 -D config $(CONF_TARGET)/config
	$(INSTALL) -m0755 -D init $(SCRIPT_TARGET)/init

uninstall:
	rm -Rf $(SCRIPT_TARGET)/config $(CONF_TARGET)/init

.PHONY: all install uninstall
