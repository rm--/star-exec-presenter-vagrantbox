include:
  - cabal-install
  - postgresql

preparations:
  cmd.run:
    - user: vagrant
    - cwd: /vagrant/star-exec-presenter
    - name: |
        echo "export PATH=/vagrant/star-exec-presenter/.cabal-sandbox/bin:$PATH" >> ~/.profile
        source ~/.profile
    - shell: /bin/bash
    - require:
      - sls: cabal-install
      - sls: postgresql

installation:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: make install
    - shell: /bin/bash

/home/vagrant/.star_exec:
  file.managed:
    - user: vagrant
    - group: vagrant
    - mode: 644
    - source: salt://star-exec-presenter/star_exec
