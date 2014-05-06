#!/bin/sh

dirs=`ls -1d */`
for d in $dirs
do
  echo `cd $d; git pull`
done
