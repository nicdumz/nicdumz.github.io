Source code for site at https://nicdumz.fr

I'm using [Blogofile](https://github.com/EnigmaCurry/blogofile) as a framework.

# Docker

    docker build .

# Manual install

    source _virtualenv/bin/activate.fish
    pip install nodeenv
    pip install -e _python
    nodeenv -p
    npm install sass

# Manual dev server

    make
    cd \_site
    python3 -m http.server 8888
