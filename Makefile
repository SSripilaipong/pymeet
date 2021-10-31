character-sheet:
	python -m pymeet.util.character_sheet

start:
	python cli.py start

unittest:
	PYTHONPATH=. pytest -m unit tests/

release:
	rm -rf ./dist || exit 0
	python setup.py sdist
	twine upload dist/*
