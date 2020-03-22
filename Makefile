TARGET       = librime-emacs.so

CC           = gcc

LINK         = -lrime

ifdef DEBUG
	CFLAGS   = -fPIC -g -Wall
else
    CFLAGS   = -fPIC -O2 -Wall
endif

ifdef LIBRIME_ROOT
	ENV      = C_INCLUDE_PATH=${LIBRIME_ROOT}include/
	LDFLAGS  = -shared -L ${LIBRIME_ROOT}lib/ -Wl,-rpath ${LIBRIME_ROOT}lib/
else
	ENV      =
	LDFLAGS  = -shared
endif

default: clean test

clean:
	-rm $(TARGET)

lib:
	$(ENV) $(CC) $(CFLAGS) $(LDFLAGS) lib.c -o $(TARGET) $(LINK)

test:
	emacs -q test.el -e eval-buffer
