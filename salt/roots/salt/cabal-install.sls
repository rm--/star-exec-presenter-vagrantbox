include:
  - cabal

{% set CABAL_VERSION = '1.22.3.0' %}

cabal-install:
  cmd.run:
    - cwd: /tmp
    - user: vagrant
    - name: |
        curl -O https://www.haskell.org/cabal/release/cabal-install-{{ CABAL_VERSION }}/cabal-install-{{ CABAL_VERSION }}.tar.gz
        tar xzvf cabal-install-{{ CABAL_VERSION }}.tar.gz
        cd cabal-install-{{ CABAL_VERSION }}
        ./bootstrap.sh
    - shell: /bin/bash
    - require:
      - sls: cabal
