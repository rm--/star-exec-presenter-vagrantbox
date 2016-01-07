include:
  - ghc

{% set CABAL_VERSION = '1.22.3.0' %}

cabal:
  cmd.run:
    - cwd: /tmp
    - user: vagrant
    - name: |
        rm -rfv $HOME/.cabal
        rm -rfv $HOME/.ghc
        curl -O https://www.haskell.org/cabal/release/cabal-{{ CABAL_VERSION }}/Cabal-{{ CABAL_VERSION }}.tar.gz
        tar xzvf Cabal-{{ CABAL_VERSION }}.tar.gz
        cd Cabal-{{ CABAL_VERSION }}
        ghc -threaded --make Setup
        ./Setup configure
        ./Setup build
        sudo ./Setup install
        echo "export PATH=~/.cabal/bin:$PATH" >> ~/.profile
        source ~/.profile
        rm -rfv /tmp/Cabal-{{ CABAL_VERSION }} /tmp/Cabal-{{ CABAL_VERSION }}.tar.gz
    - shell: /bin/bash
    - require:
      - sls: ghc
