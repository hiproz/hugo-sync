#!/bin/bash
cd git
git pull
rm -rf ../../content/*
\cp * ../../ -rf  
cd ../..
hugo
