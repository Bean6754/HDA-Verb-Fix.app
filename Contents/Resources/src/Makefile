all:
	clang hda-verb-fix.c -o hda-verb-fix

install:
    ifeq (,$(wildcard ./hda-verb-fix))
	@echo "Error: 'hda-verb-fix' does not exist."
	@echo "You must first run 'make' before 'make install'."
    else
	cp hda-verb-fix ../../MacOS/hda-verb-fix
    endif

clean:
	rm *.o hda-verb-fix
