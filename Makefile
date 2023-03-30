install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=hello --cov=hellocli test_*.py
	python -m pytest -vv --cov=hello --cov=test_*.py

lint:
	pylint --disable=R,C *.py

all: install lint test