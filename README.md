# [Langmuir Project Page](http://langmuirsim.github.io/)

* http://langmuirsim.github.io/

## About

* The website is a Sphinx based document.
* All source files for the document are in the `docs` folder.
* The Python and Doxygen source code docs have been pregenerated.

## Setup

A Python environment with the following is required to build the website.

- sphinx
- sphinx_rtd_theme
- pandoc

The following conda environment can be used.

```bash
cd ./bin
conda remove --name langmuirdocs --all --yes
conda create --name langmuirdocs --file environment.txt
```

## Update

To update the website, perform the following steps.

```bash
# install some dependencies or the required activate conda environment
conda activate langmuirdocs

# run Sphinx
cd ./bin
./build.sh

# If successful, publish the new content 
cd ..
git add .
git commit -m "Update website content"
```
