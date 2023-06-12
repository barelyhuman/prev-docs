setup:
	curl -sf https://goblin.barelyhuman.xyz/github.com/barelyhuman/alvu | sh

docs:  
	alvu --hard-wrap=false --highlight --highlight-theme="algol_nu"

docs_dev:
	find lib/ pages/ | entr -cr alvu --hard-wrap=false --highlight --highlight-theme="algol_nu" --serve
