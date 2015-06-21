include:
  - preparations

installation:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: |
        cabal install --enable-tests . yesod-platform yesod-bin --max-backjumps=-1 --reorder-goals
    - shell: /bin/bash
    - require:
      - sls: preparations
