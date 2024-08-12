PACKAGE_NAME := mbedext
BUILD_DIR := build
DIST_DIR := dist


.PHONY: py-clean
py-clean:
	rm -rf $(BUILD_DIR) $(DIST_DIR) *.egg-info

.PHONY: py-build
py-build:
	python3 -m build

.PHONY: py-install
py-install:
	pip install --force-reinstall --no-dependencies dist/mbedext-0.0.7-py3-none-any.whl

.PHONY: py-upload
py-upload:
	twine upload $(DIST_DIR)/*

.PHONY: py-release
py-release: py-clean py-build py-upload
