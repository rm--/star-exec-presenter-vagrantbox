include:
  - preparations

installation:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: |
        make install
    - shell: /bin/bash
    - require:
      - sls: preparations
