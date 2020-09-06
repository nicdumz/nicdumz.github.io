Source code for site at https://nicdumz.fr

I'm using [Blogofile](https://github.com/EnigmaCurry/blogofile) as a framework.
# Dev environment setup

    sudo su -c "gem install sass"
    virtualenv -p /usr/bin/python3 _virtualenv
    source _virtualenv/bin/activate.fish
    pip install -e _python


# Dev server

   make
   cd \_site
   python3 -m http.server 8888
