#!/bin/bash
ret=5
while [[ $ret != 0 ]]
do
    tmp=$(psql -U guest -p 5432 -h postgres-db -d eosmdbtwo)
    ret=$?
done

echo "testing guest"
echo "------------------------------------"
psql -U guest -p 5432 -h postgres-db -d eosmdbtwo -f psql-commands.sql
