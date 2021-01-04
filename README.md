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

# Production

- Pushing to github triggers a GCP docker build. The default github integration
  didn't work as submodules aren't pulled. Instead I'm using [this
  recipe](https://cloud.google.com/cloud-build/docs/access-private-github-repos)
  to customize behavior on pull (and it serves as a toy example of how Secret
  Manager works).
