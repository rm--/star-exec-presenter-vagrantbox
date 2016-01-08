include:
  - cabal-install
  - postgresql

preparations:
  cmd.run:
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
    - name: make install

/home/vagrant/.star_exec:
  file.managed:
    - mode: 644
    - source: salt://star-exec-presenter/star_exec

yesod-devel:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - name: yesod devel
    - file: /home/vagrant/.star_exec
