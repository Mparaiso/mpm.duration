test:
	@mocha -R spec
commit: test
	@git add .
	@git commit -am"update `date`" || : 
push: commit
	@git push origin master 
.PHONY: test