commit-msg ?= "Auto commit by Makefile"
 
git-push:
	git add .
	git commit -m "$(commit-msg)"
	git push
	say "code pushed"
	