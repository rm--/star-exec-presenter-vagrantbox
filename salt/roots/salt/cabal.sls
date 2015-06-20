cabal:
  cmd.run:
    - cwd: /tmp
    - user: vagrant
    - name: |
        rm -rfv $HOME/.cabal
        rm -rfv $HOME/.ghc
        curl -O https://www.haskell.org/cabal/release/cabal-1.22.3.0/Cabal-1.22.3.0.tar.gz
        tar xzvf Cabal-1.22.3.0.tar.gz
        cd Cabal-1.22.3.0
        ghc -threaded --make Setup
        ./Setup configure --user
        ./Setup build
        ./Setup install
    - shell: /bin/bash
    - require:
      - sls: ghc

