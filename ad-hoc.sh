ansible test -m shell -a "df -Th" # Shell команды

ansible test -m shell -a "uptime" # Shell команды

ansible test -m setup # Сведения о хосте

ansible test -m copy -a "src=privet.txt dest=/home mode=777" # Скопировать файл

ansible test -m copy -a "src=privet.txt dest=/home mode=777" -b # используем ключ -b (become=sudo)

ansible test -m file -a "path=/home/user/privet.txt state=absent" # Удалить файл

ansible test -m get_url -a "url=https://someurl dest=/home/user" # Скачать файл из инета

ansible test -m uri -a "url=http://adv-it.net" # Проверить доступность веб ресурса (без контента)

ansible test -m uri -a "url=http://adv-it.net return_content=yes" # с контентом

ansible test -m service -a "name=apache2 state=started enabled=yes" -b # Запустить сервис
 
ansible test -m shell -a "ls /var" -v(verbose) # Отладка

ansible test -m shell -a "ls /var" -vv # Отладка

ansible-doc -l # Показать все модули