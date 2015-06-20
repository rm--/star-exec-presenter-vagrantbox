ghc:
  cmd.run:
    - cwd: /tmp
    - user: vagrant
    - name: |
        wget https://www.haskell.org/ghc/dist/7.8.4/ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2
        tar xvfj ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2
        cd ghc-7.8.4
        mkdir /opt/ghc-7.8.4
        ./configure --prefix=/opt/ghc-7.8.4
        make install
        echo "export GHC_HOME=/opt/ghc-7.8.4/" >> ~/.profile
        echo "export PATH=/opt/ghc-7.8.4/bin:$PATH" >> ~/.profile
        source ~/.profile
        rm -rfv /tmp/ghc-7.8.4-x86_64-unknown-linux-deb7.tar.bz2
    - shell: /bin/bash
    - require:
      - sls: apt
      - pkg: wget
      - pkg: libgmp-dev
      - pkg: zlib1g-dev
