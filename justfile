default:
	@just --list

serve:
	mkdocs serve


install-deps:
	python -m pip install mkdocs mkdocs-material