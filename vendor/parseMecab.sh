#!/bin/sh

nowdir=`dirname $0`

cd $nowdir

#if [ -f ~/.profile ]; then
#  source ~/.profile
#else
#  if [ -f ~/.bash_profile ]; then
#    source ~/.bash_profile
#  else
#      if [ -f ~/.bashrc ]; then
#        source ~/.bashrc
#      fi
#  fi
#fi
export PATH=$PATH:/usr/local/bin:~/local/bin:/usr/bin

echo "infile " $2 > ./res.log
echo "outfile1 " $3 >> ./res.log
echo "outfile2 " $4 >> ./res.log
echo `echo $PATH `  >> ./res.log

#mecab -o $3 $2 
nowres=$?
if [ $nowres != 0 ];
then
  exit $nowres
fi

cabocha -f 1 < $2 > $4
