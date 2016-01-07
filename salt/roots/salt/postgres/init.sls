{% set POSTGRESQL_VERSION = '9.3' %}

postgresql:
   pkg:
      - installed
      - name: postgresql-{{ POSTGRESQL_VERSION }}
   service:
      - running
      - require:
         - pkg: postgresql-{{ POSTGRESQL_VERSION }}
      - watch:
        - file: /etc/postgresql/{{ POSTGRESQL_VERSION }}/main/pg_hba.conf

/etc/postgresql/{{ POSTGRESQL_VERSION }}/main/pg_hba.conf:
  file.managed:
    - user: postgres
    - group: postgres
    - mode: 644
    - source: salt://postgres/pg_hba.conf
    - require:
      - pkg: postgresql-{{ POSTGRESQL_VERSION }}

create-user:
  cmd.run:
    - name: sudo -u postgres psql -c "CREATE USER yesod PASSWORD 'yesod'"
    - require:
      - file: /etc/postgresql/{{ POSTGRESQL_VERSION }}/main/pg_hba.conf

create-db:
  cmd.run:
    - name: sudo -u postgres createdb -O yesod yesod
    - require:
      - file: /etc/postgresql/{{ POSTGRESQL_VERSION }}/main/pg_hba.conf
