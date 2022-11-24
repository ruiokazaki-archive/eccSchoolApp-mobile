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

genwatch:
	fvm flutter packages pub run build_runner watch --delete-conflicting-outputs

run:
	fvm flutter run

clean:
	fvm flutter clean