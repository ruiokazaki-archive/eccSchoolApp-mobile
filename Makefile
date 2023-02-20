.PHONY: setup doctor pubget gen run clean

setup:
	dart pub global activate fvm
	export PATH="$$PATH":"$$HOME/.pub-cache/bin"
	fvm install

doctor:
	fvm doctor

get:
	fvm flutter pub get

gen:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs

gen-icons:
	fvm flutter pub run flutter_launcher_icons:main

watch:
	fvm flutter packages pub run build_runner watch --delete-conflicting-outputs

run:
	fvm flutter run

clean:
	fvm flutter clean

build-ios:
	fvm flutter build ios

devices:
	fvm flutter devices

install:
	flutter install -d