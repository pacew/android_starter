include ./conf.sh

APK_DEBUG=bin/$(PROJNAME)-debug.apk
ADB=$(ADT_HOME)/sdk/platform-tools/adb

JAVA_FILES=$(shell git ls-files)

all: $(APK_DEBUG)

$(APK_DEBUG): $(JAVA_FILES)
	ant -quiet -noinput debug
	touch $(APK_DEBUG)

install: all
	$(ADB) install -r bin/${PROJNAME}-debug.apk

clean:
	rm -rf bin/*
