#!/bin/sh
./flow doctrine:migrate
sleep 30
./flow user:create --roles Administrator admin password LocalDev Admin
sleep 10
./flow cr:setup --content-repository default
sleep 10
 ./flow site:create runa-homepage Runa.Homepage Runa.Homepage:Document.Homepage

