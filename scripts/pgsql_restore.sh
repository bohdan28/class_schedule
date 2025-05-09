export PGPASSWORD=postgrespass
# Write your user
dbUser=postgresuser
# Write your database
database=pgdatabase
# Write your host
host="127.0.0.1"
# Write your port
port=5432
psql -U $dbUser -h $host -p $port -d $database -c "DROP SCHEMA public CASCADE; CREATE SCHEMA public;"
psql --set ON_ERROR_STOP=off -U $dbUser -h $host -p $port -d $database -1 -f ./2024-08-19.dump
psql --set ON_ERROR_STOP=off -U postgresuser -h localhost -p 5432 -d pgdatabase -1 -f ./2024-08-19.dump
unset PGPASSWORD