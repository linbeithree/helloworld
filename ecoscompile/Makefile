COBJ_FILES += src/cli.c
COBJ_FILES += src/cli_console.c
COBJ_FILES += src/dvt_cmd.c
COBJ_FILES += src/dvt_shell.c
COBJ_FILES += src/misc_cmd.c
COBJ_FILES += src/timer_debug.c

export COBJ_FILES

debug:
	@echo 'this is for debug cli'
	make -f Makefile.config debug
	make -f Makefile.cli debug
	rm -rf devs/ error/  hal/  infra/ io/ isoinfra/ kernel/ language/ services/ ecos.ecc makefile

release:
	@echo 'this is for release cli'
	make -f Makefile.config release
	make -f Makefile.cli release
	rm -rf devs/ error/  hal/  infra/ io/ isoinfra/ kernel/ language/ services/ ecos.ecc makefile


.PHONY: clean
clean:
	rm -rf devs/ error/  hal/  infra/ io/ isoinfra/ kernel/ language/ services/ ecos.ecc makefile
	rm -rf *.elf *.bin *.lst *.hex *.map config.mk
