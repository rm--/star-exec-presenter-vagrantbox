postgresql:
   pkg:
      - installed
      - name: postgresql-9.3
   service:
      - running
      - require:
         - pkg: postgresql-9.3
      - watch:
        - file: /etc/postgresql/9.3/main/pg_hba.conf

/etc/postgresql/9.3/main/pg_hba.conf:
  file.managed:
    - user: postgres
    - group: postgres
    - mode: 644
    - source: salt://postgres/pg_hba.conf
    - require:
      - pkg: postgresql-9.3

create-user:
  cmd.run:
    - name: sudo -u postgres psql -c "CREATE USER yesod PASSWORD 'yesod'"
    - require:
      - file: /etc/postgresql/9.3/main/pg_hba.conf

create-db:
  cmd.run:
    - name: sudo -u postgres createdb -O yesod yesod
    - require:
      - file: /etc/postgresql/9.3/main/pg_hba.conf
