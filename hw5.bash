# Создаем директорию для проекта
mkdir hw5
cd hw5

# Клонировать удаленный репозиторий
# git clone git://github.com/schacon/ticgit.git

# Либо 
#Инициализируем новый репозиторий локально
git init

# Объявляем игнор файлов и директорий
echo .gitignore >> .gitignore
echo *.sass  >> .gitignore
echo bin/ >> .gitignore
echo admin/ >> .gitignore
echo config/ >> .gitignore

# Создаем директории и файлы
mkdir bin
mkdir admin
mkdir config
mkdir imgs
echo >> .sass
echo >> index.html
echo >> main.html
echo >> imgs/text.txt
git add .
git commit -m "First commit"

# Создаем новую ветку и переходим в нее
git branch blog
git checkout blog

# Создаем директорию blog и файлы index.js, index.html
mkdir blog && cd blog
echo >> index.js
echo >> index.html

# Смотрим статус
git status

# Делаем коммит в блог, чтобы директория и файлы не торчали в основной ветке
git add blog/
git commit -m "blog added"
cd ..

# Смотрим историю изменений
# git reflog
# git log

# Отменяем последний один коммит без изменения кода
#git reset --soft HEAD~1

# Отменяем два последних коммита с изменением кода
#git reset --hard HEAD~2

# Перехожу в основную ветку!
git checkout master

# Связываем наш локальный репозиторий гит с удаленным репозиторием на гитхабе
git remote add origin https://github.com/Make778/hw5.git

# Отправляем обновления в удаленный репозиторий ветки master. Можем выбрать и другие ветки
git push -u origin master

# Стянуть изменения из удаленного репозитория. Можно запустить у другого разраба, 
# чтобы у него появились изменения
# git pull