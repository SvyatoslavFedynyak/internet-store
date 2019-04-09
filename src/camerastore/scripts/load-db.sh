service mysql start
mysql -u django --password="password" --database=django < backup/saved-db.sql
python3.6 manage.py migrate