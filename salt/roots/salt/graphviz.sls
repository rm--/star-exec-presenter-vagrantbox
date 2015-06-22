include:
  - preparations

graphviz:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: |
        cabal sandbox add-source /vagrant/graphviz
    - shell: /bin/bash
    - require:
      - sls: preparations
