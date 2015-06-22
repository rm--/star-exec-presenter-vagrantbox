include:
  - preparations

installation:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: |
        cabal install alex happy yesod-bin
        cabal install
    - shell: /bin/bash
    - require:
      - sls: preparations
