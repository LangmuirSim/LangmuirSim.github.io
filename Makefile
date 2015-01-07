help:
	@echo "[targets]"
	@echo "  help           : print this message"
	@echo "  upstream-add   : add SinglePaged.git as a remote named upstream"
	@echo "  upstream-fetch : fetch publish branch from upstream"
	@echo "  upstream-merge : merge publish branch from upstream"
	@echo ""
	@echo "  jekyll         : run commands to unstall jekyll (ubuntu)"
	@echo "  update         : update jekyll"
	@echo "  serve          : run jekyll serve to test webpage before pushing"

add-upstream:
	-git remote remove upstream
	git remote add upstream git@github.com:t413/SinglePaged.git
	git remote -v

fetch-upstream: add-upstream
	git fetch upstream publish
	git branch --all

merge-upstream: fetch-upstream
	git merge upstream/publish master

jekyll:
	sudo apt-get install ruby
	sudo gem install bundler
	bundle install

update:
	bundle update

serve:
	bundle exec jekyll serve
