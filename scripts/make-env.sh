#!/bin/bash
cp ../.env.example ../.env;
echo "DB_CONNECTION=sqlite
DB_HOST=127.0.0.1
DB_PORT=3306" > ../.env;