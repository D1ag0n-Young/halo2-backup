#!/bin/sh
message=`date +"%Y_%m_%d_%H_%M"`
cd /root/.halo2
rm -rf .git
git init
git add backups/ db/ indices/ keys/ logs/ backup.sh
git commit -m $message
git branch -M main
git remote add origin git@github.com:D1ag0n-Young/halo2-backup.git
git push -f origin main
