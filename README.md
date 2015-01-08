# [Langmuir Project Page](http://langmuirsim.github.io/)

* http://langmuirsim.github.io/

## Upstream

* The website is based on the SinglePaged jekyll theme.
* https://github.com/t413/SinglePaged

###### Add

```bash
git remote remove upstream
git remote add upstream git@github.com:t413/SinglePaged.git
```

###### Update

```bash
git fetch upstream publish
git merge upstream/publish master
```

## Jekyll

* The website uses jekyll, a ruby based static site generator.
* http://jekyllrb.com/

###### Install

* It is useful to have jekyll installed locally to preview changes before pushing them.

```bash
# Ubuntu
sudo apt-get install ruby
sudo gem install bundler

# Gemfile needed
cd ./path/to/LangmuirSim.github.io
bundle install
```

###### Update

 ```bash
bundle update
```

###### Preview

 ```bash
bundle exec jekyll serve
 ```
