include:
  - apt
  - packages

{% set GHC_VERSION = '7.10.1' %}

ghc:
  cmd.run:
    - cwd: /tmp
    - user: vagrant
    - name: |
        wget https://downloads.haskell.org/~ghc/7.10-latest/ghc-{{ GHC_VERSION }}-x86_64-unknown-linux-deb7.tar.bz2
        tar xvfj ghc-{{ GHC_VERSION }}-x86_64-unknown-linux-deb7.tar.bz2
        cd ghc-{{ GHC_VERSION }}
        sudo mkdir -p /opt/ghc-{{ GHC_VERSION }}
        ./configure --prefix=/opt/ghc-{{ GHC_VERSION }}
        sudo make install
        echo "export GHC_HOME=/opt/ghc-{{ GHC_VERSION }}" >> ~/.profile
        echo "export PATH=/opt/ghc-{{ GHC_VERSION }}/bin:$PATH" >> ~/.profile
        source ~/.profile
        rm -rfv /tmp/ghc-{{ GHC_VERSION }} /tmp/ghc-{{ GHC_VERSION }}-x86_64-unknown-linux-deb7.tar.bz2
    - shell: /bin/bash
    - require:
      - sls: apt
      - pkg: wget
      - pkg: libgmp-dev
      - pkg: zlib1g-dev
