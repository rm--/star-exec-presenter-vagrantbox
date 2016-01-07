include:
  - cabal-install
  - postgres

preparations:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: |
        echo "export PATH=.cabal-sandbox/bin:$PATH" >> ~/.profile
        source ~/.profile
    - shell: /bin/bash
    - require:
      - sls: cabal-install
      - sls: postgres
