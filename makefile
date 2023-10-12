.DEFAULT_GOAL := build-run
install:
	npm ci
brain-games:
	node bin/brain-games.js
lint:
publish:
	npm publish --dry--run
setup:
	gradle wrapper --gradle-version 8.3

clean:
	./gradlew clean

build:
	./gradlew clean build

gradlew:
	./gradlew clean install

run-dist:
	./build/install/java-package/bin/java-package

run:
	./gradlew run

test:
	./gradlew test

report:
	./gradlew jacocoTestReport

check-deps:
	./gradlew dependencyUpdates -Drevision=release


build-run: build run

.PHONY: build
