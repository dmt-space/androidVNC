(/bin/echo -e -n "package com.sun.jna.examples.unix;\n\npublic class X11KeySymDef {\n"; cat /usr/include/X11/keysymdef.h | sed -r -e 's/^#(ifdef|endif)/\/\/#\1/g' -e 's/^#define\s\s*([a-zA-Z0-9_]+\s+)([0-9a-zA-Z]+)/public static final int \1 = \2;/g' | sed -e 's/^/\t/'; echo "}") > X11KeySymDef.java