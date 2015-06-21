graphviz:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: |
        cabal sandbox add-source /vagrant/graphviz
        cabal install graphviz
    - shell: /bin/bash
    - require:
      - file: preparations
