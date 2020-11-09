#!/bin/bash
ret=5
while [[ $ret != 0 ]]
do
    tmp=$(psql -U guest1 -p 5432 -h postgres-db -d eosmdbtwo)
    ret=$?
done

echo "testing guest1"
echo "------------------------------------"
psql -U guest1 -p 5432 -h postgres-db -d eosmdbtwo -f psql-commands.sql
echo "testing guest2"
echo "------------------------------------"
psql -U guest2 -p 5432 -h postgres-db -d eosmdbtwo -f psql-commands.sql
echo "testing guest3"
echo "------------------------------------"
psql -U guest3 -p 5432 -h postgres-db -d eosmdbtwo -f psql-commands.sql