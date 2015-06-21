yesod-devel:
  cmd.run:
    - cwd: /vagrant/star-exec-presenter
    - user: vagrant
    - name: |
        yesod devel
    - shell: /bin/bash
    - require:
      - sls: installation
      - sls: graphviz
