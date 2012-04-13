.PHONY: install install-user

install-user:
	mkdir -p $(HOME)/etc/cproject_template
	cp template/* $(HOME)/etc/cproject_template
	mkdir -p $(HOME)/bin
	cat cproject-init | sed 's/XXXXXXX/$(HOME)/' > $(HOME)/bin/cproject-init
	chmod 755 $(HOME)/bin/cproject-init

install:
	mkdir -p /usr/etc/cproject_template
	cp template/* /usr/etc/cproject_template
	cat cproject-init | sed 's/XXXXXXX/\/usr/' > /usr/bin/cproject-init
	chmod 755 /usr/bin/cproject-init

