include ./conf.sh

APK_DEBUG=bin/$(PROJNAME)-debug.apk

JAVA_FILES=$(shell git ls-files '*.java')

all: $(APK_DEBUG)

$(APK_DEBUG): $(JAVA_FILES)
	ant -quiet -noinput debug

install:
