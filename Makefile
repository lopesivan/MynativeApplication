MANIFEST = app/src/main/AndroidManifest.xml
GRADLE   = ./gradlew

MAIN     = xmlstarlet select -T -t -v "//application/activity/@android:name" -n $(MANIFEST)
PACKAGE  = xmlstarlet select -T -t -v "//manifest/@package" -n $(MANIFEST)

build:
	$(GRADLE) assemble
start:
	adb shell am start -n `$(PACKAGE)`/`$(PACKAGE)``$(MAIN)`
install:
	$(GRADLE) $@Debug
unistall:
	adb uninstall `$(PACKAGE)`
clean:
	$(GRADLE) $@
