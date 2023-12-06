# alkstmshkn_infra
alkstmshkn Infra repository

ssh -A -t appuser@62.84.126.94 ssh appuser@10.128.0.5

#впн проверен
ssh -i ~/.ssh/appuser appuser@10.128.0.5

bastion_IP = 62.84.126.94
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
