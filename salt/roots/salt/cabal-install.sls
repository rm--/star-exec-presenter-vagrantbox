cabal-install:
  cmd.run:
    - cwd: /tmp
    - user: vagrant
    - name: |
        curl -O https://www.haskell.org/cabal/release/cabal-install-1.22.3.0/cabal-install-1.22.3.0.tar.gz
        tar xzvf cabal-install-1.22.3.0.tar.gz
        cd cabal-install-1.22.3.0
        ./bootstrap.sh
    - shell: /bin/bash
    - require:
      - sls: cabal

