Создание облачной инфраструктуры

Создаем бакет, ключ и юзера в yc CLI

![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A14.jpg)
![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A15.jpg)




terraform init -backend-config="access_key=$ACCESS_KEY" -backend-config="secret_key=$SECRET_KEY", terraform plan и terraform apply - создаем нашу инфру

увидим только зеленые буквы - все отлично

![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A31%3A42.jpg)



наш бакет:

![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A20.jpg)


проверим что создались все нужные тачки:

![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A31%3A42.jpg)

Конфигурируем наши будущие ноды:
запускаем подготовленный плейбук 
ansible-playbook -i inventory/hosts.ini playbook.yml

![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A23.jpg)


в результате видим что все прошло успешно

проверим, что все работает - зайдем по адресам на наш nginx и grafana
![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A30.jpg)
![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A26.jpg)
![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A25.jpg)


далее подготовил конфигурацию gitlab ci, и попробовал запустить коммит, но к сожалению чтобы запускать джобы нужно подтвердить номер, а российские номера не дает
не успеваю переделать все под другой инструмент ci/cd [gitlabci](https://github.com/Hoaxlt/diplom/blob/main/gitlab/html/.gitlab-ci.yml)

![](https://github.com/Hoaxlt/diplom/blob/main/IMAGE%202026-01-15%2003%3A22%3A19.jpg)
