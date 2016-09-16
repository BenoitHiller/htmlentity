.PHONY: test
install:
	# Global install isn't going to work.
	# bpkg currently doesn't really have propper global install support.
	# This is just a makefile that is supposed to do some kind of standard install.
	# I would rather just fix bpkg to allow indempotent installs than write that for this utitility

uninstall:
	# This doesn't work at all

test:
	export PATH=$$PWD:$$PATH; test/decodetest.bash
