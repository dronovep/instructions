#Нужно проверить, есть ли репозиторий REPEL - репозиторий экстра пакетов от проекта Fedora
rpm -qa | grep epel

#Если репозитория нет, то устанавливаем
sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

#Аналогично проверяем и ставим репозиторий REMI - специальный репозиторий различных версий php
rpm -qa | grep remi
sudo dnf install https://rpms.remirepo.net/enterprise/remi-release-8.rpm

# Получаем список источников php
dnf module list php

# Если нам нужен например модуль с php версии 8
sudo dnf module enable php:remi-8.0

# или скорее всего linux centos выдаст предупреждение о конфликте с существующей версией php, тогда
sudo dnf module reset php:remi-8.0

# Далее мы либо ставим php если еще не был установлен либо обновляем - классическим способом обновления пакетов через пакетный менеджер