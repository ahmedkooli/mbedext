PACKAGE_NAME := mbedext
BUILD_DIR := build
DIST_DIR := dist


.PHONY: py-clean
py-clean:
	rm -rf $(BUILD_DIR) $(DIST_DIR) *.egg-info

.PHONY: py-build
py-build:
	python3 -m build

.PHONY: py-upload
py-upload:
	twine upload $(DIST_DIR)/*

.PHONY: py-release
py-release: py-clean py-build py-upload
