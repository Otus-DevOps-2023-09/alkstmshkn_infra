# alkstmshkn_infra
alkstmshkn Infra repository

# ssh -A -t appuser@62.84.126.94 ssh appuser@10.128.0.5

# впн проверен
# ssh -i ~/.ssh/appuser appuser@10.128.0.5

# bastion_IP = 158.160.125.154
# someinternalhost_IP = 10.128.0.5

# HW_4 развертывание тестового приложения

# testapp_IP = 62.84.126.94
# testapp_port = 9292

# HW5. Сборка образа с помощью Packer
# создал ветку packer-base, установил Packer
# создал сервисный аккаунт yc и экспортировал ключ
# создал и провалидировал файл шаблона с использованием двух
#  провижионеров
# запустил сборку, создал виртуальную машину
# reddit-base = 51.250.26.220
# параметризировал variables.json.examples и добавил файл в .gitignore
#
#hw_6. TERRAFORM-1
создал ветку terraform-1, установил terraform, в корне terraform
директории создал  .gitignore, в main.tf определил провайдера с оффсайта;
yandexcloud и соответствующие параметры собственного облака, добавил
ресурсы инстанса, создал инстанс;
пересоздал инстанс с двумя провижионерами ﬁles/puma.service, ﬁles/deploy.sh,
external_ip_address_app = 158.160.102.153
определил переменные и пересоздал ресурсы, проверка пройдена;
добавил инпут переменную для приватного ключа, дефолтное значение для зоны;
применил формат конфиг файлов terraform fmt, создал terraform.tfvars.example.

HW_7. TERRAFORM-2
проверил очередность разворачивания инстансов при изменении зависимостей
пересоздал образы под задание для app и db с установкой приложений
разделил конфигурацию по файлам: app.tf, db.tf, vpc.tf, добавил outputs
инстансы созданы, доступ есть, приложения установлены
переделал конфигурацию, разбил на модули, создал инстансы
external_ip_address_app = "51.250.83.23"
external_ip_address_db = "51.250.89.190"
проверил доступ к обоим инстансам, ок
создал инфраструктуру для окружений stage и prod
проверил оба окружения
добавил описание backend для stage и prod

HW_8. Ansible-1
создал окружение и установил ansible с помощью pip
поднял инфраструктуру контура stage
external_ip_address_app = "158.160.55.243"
external_ip_address_db = "62.84.127.171"
создал inventory, проверил ддоступность хостов для ansible
проверил рабооту инвентори в разных вариациях, создал inventory.yml
проверил inventory.yml, проверил модули command, shell, service, git
Создан и протестирован плейбук clone.yml
успешный пинг ansible all -m ping -i inventory
проверка динамического инвентори: ansible all -m ping -i inventory.sh
158.160.55.243 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
62.84.127.171 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
