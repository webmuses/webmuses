lokalnie:

1.bundle install
2.rake db:migrate
3.rake db:seed

dump bazy z heroku z uzyciem pgbackups: https://devcenter.heroku.com/articles/pgbackups
1. `heroku pg:backups capture --app webmuses`
2. `heroku pg:backups public-url [BACKUP_ID] --app webmuses`
3. pobranie dumpa z url zwroconego przez polecenie wyzej
4. stworzyc baze w PostreSQL, zaktualizowac database.yml i Gemfile
5. `pg_restore --verbose --clean --no-acl --no-owner -U [USERNAME] -d [DATABASE] [DUMP_FILE]`

heroku:

1. `git push heroku master` (instaluje na heroku to co jest w masterze)
2. `heroku run rake db:migrate` (jesli sa nowe migracje)
3. `heroku restart` ( jesli sa nowe migracje)
