Source code for site at https://nicdumz.fr

I'm using [Blogofile](https://github.com/EnigmaCurry/blogofile) as a framework.
# Dev environment setup

    sudo su -c "gem install sass"
    virtualenv -p /usr/bin/python3 virtualenv-blogofile
    source virtualenv-blogofile/bin/activate.fish
    pip install -e git+https://github.com/EnigmaCurry/textile-py3k.git#egg=textile
    pip install -e git+https://github.com/EnigmaCurry/blogofile.git#egg=blogofile
    pip install -e git+https://github.com/EnigmaCurry/blogofile_blog.git#egg=blogofile_blog


# Dev server

   make
   cd \_site
   python3 -m http.server 8888
