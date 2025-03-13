add:
	git add .

commit:
	git commit -a -S -m "$(m)"

push:
	git push origin main

revert:
	git revert "$(m)"	