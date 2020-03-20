install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
lint:
	#hadolint Dockerfile
	#pylint --disable=R,C hello.py
	pylint hello.py
all: install linst test
