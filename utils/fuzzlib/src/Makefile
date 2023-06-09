.PHONY: all dist clean

# define defaults for architecture specific variables
# the target can either be specified by ARCH=i386 for example or by explictly setting a full target
# triple for example MACHINE=arm-linux-gnueabi
#
# the remaining part of the makefile should only care about MACHINE
CCMACHINE:=$(shell $(CC) -dumpmachine)
CCARCH=$(firstword $(subst -, ,$(MACHINE)))
ARCH:=$(firstword $(subst -, ,$(CCMACHINE)))
# replace ARCH in the target triple (ARCH can be overriden) but only if MACHINE wasn't specified manually
MACHINE?=$(subst $(firstword $(subst -, ,$(CCMACHINE)))-,$(ARCH)-,$(CCMACHINE))
ARCH:=$(firstword $(subst -, ,$(MACHINE)))

# if the only difference between CCMACHINE and MACHINE is 32 vs 64 bit, use -m32
ifeq ($(ARCH), $(filter $(ARCH), i386 i486 i586 i686 i786 i886 i986))
  ifeq ($(CCMACHINE), $(subst $(ARCH),x86_64,$(MACHINE)))
    ARCHFLAGS:=-m32
  endif
else
ifeq ($(ARCH), ppc)
  ifeq ($(CCMACHINE), $(subst $(ARCH),ppc64,$(MACHINE)))
    ARCHFLAGS:=-m32
  endif
endif
endif

# set default value for CC if target is not standard target for compiler and we don't have flags to set it
ifneq ($(MACHINE),$(CCMACHINE))
ifeq (,$(ARCHFLAGS))
  CC:=$(MACHINE)-gcc
else
  CC:=$(CC) $(ARCHFLAGS)
endif
endif


CFLAGS:=$(CFLAGS) -Wall

ifneq (,$(findstring linux,$(MACHINE)))
  CFLAGS:=$(CFLAGS) -DLINUX -ldl
else
ifneq (,$(findstring freebsd,$(MACHINE)))
  CFLAGS:=$(CFLAGS) -Dfreebsd
else
ifneq (,$(findstring -elf,$(MACHINE)))
  CFLAGS:=$(CFLAGS) -mabicalls
endif
endif
endif

#$(info $(MACHINE) $(CC))

ALL_MODULES=$ $(patsubst %.c,%.so,$(wildcard *.c))

all: $(ALL_MODULES)


wchar_t_env_fuzz.so: CFLAGS+=-ldl
pro.so: CFLAGS


%.so: %.c
	$(CC) $^ -o $@ -shared -fPIC $(CFLAGS)

dist: all
	mkdir -p ../$(MACHINE)
	cp *.so ../$(MACHINE)

clean:
	rm -f *.o
	rm -f *.so

archinfo:
	@echo "Compiler architecture: $(CCARCH)"
	@echo "Target architecture: $(ARCH)"
	@echo "Compiler target triple: $(CCMACHINE)"
	@echo "Computed target triple: $(MACHINE)"
	@echo "Compiler command: $(CC) $(CFLAGS)"
