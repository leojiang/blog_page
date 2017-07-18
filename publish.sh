#!/bin/sh

npm run build
rm -rf ../blog_server_repo/*
cp -rf build/*  ../blog_server_repo
cd ../blog_server_repo
git add .
git commit -m "updated blogs"
git pull
git push
