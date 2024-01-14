# alkstmshkn_infra
alkstmshkn Infra repository

ssh -A -t appuser@62.84.126.94 ssh appuser@10.128.0.5

#впн проверен
ssh -i ~/.ssh/appuser appuser@10.128.0.5

bastion_IP = 158.160.125.154
someinternalhost_IP = 10.128.0.5

#HW_4 развертывание тестового приложения

testapp_IP = 62.84.126.94
testapp_port = 9292

#HW5. Сборка образа с помощью Packer
создал ветку packer-base, установил Packer
создал сервисный аккаунт yc и экспортировал ключ
создал и провалидировал файл шаблона с использованием двух провижионеров
запустил сборку, создал виртуальную машину
reddit-base = 51.250.26.220
параметризировал variables.json.examples и добавил файл в .gitignore

#hw_6. TERRAFORM-1
создал ветку terraform-1, установил terraform, в корне terraform
директории создал  .gitignore, в main.tf определил провайдера с оффсайта
yandexcloud и соответствующие параметры собственного облака, добавил
ресурсы инстанса, создал инстанс...
пересоздал инстанс с двумя провижионерами ﬁles/puma.service, ﬁles/deploy.sh,
external_ip_address_app = 158.160.102.153
определил переменные и пересоздал ресурсы, проверка пройдена
добавил инпут переменную для приватного ключа, дефолтное значение для зоны
применил формат конфиг файлов terraform fmt, создал terraform.tfvars.example
