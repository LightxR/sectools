.PHONY : all clean build upload

BASEDIR=./sectools

all: install

clean:
	@rm -rf `find ./ -type d -name "*__pycache__"`
	@rm -rf ./build/ ./dist/ ./sectools.egg-info/

install:
	python3 setup.py install
build:
	python3 setup.py sdist bdist_wheel

upload:
	python3 setup.py sdist upload
