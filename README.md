andrewrothstein.kubent
=========

![Build Status](https://github.com/andrewrothstein/ansible-kubent/actions/workflows/build.yml/badge.svg)

Installs [kube-no-trouble](https://github.com/doitintl/kube-no-trouble).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kubent
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
