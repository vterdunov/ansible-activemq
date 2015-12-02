activemq
=========
Эта роль устанавливает activemq.

Requirements
------------
None

Role Variables
--------------

```
amq_user: activemq
amq_version: 5.8.0

# ссылка для скачивания. Для версий старше 5.8.0 бинарные файлы находятся по адресу
#  http://apache-mirror.rbc.ru/pub/apache/activemq/
amq_download_url: http://archive.apache.org/dist/activemq/apache-activemq/{{ amq_version }}/apache-activemq-{{ amq_version }}-bin.tar.gz

# директория для установки
amq_install_dir: /opt

# временная директория для загрузки файлов
amq_download_dir: /tmp/amq_tmp
```

Dependencies
------------
None

Example Playbook
----------------
```
- hosts: all
  roles:
     - role: activemq
```

Author Information
------------------
Разработано и протестировано для Ubuntu 14.04 (trusty)
