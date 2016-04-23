#!/bin/bash
export HOME=/root/


cd goodmemory.cc
git pull
rm -rf ../../content/*
\cp * ../../ -rf  
cd ../..
rm -rf public/*
hugo
