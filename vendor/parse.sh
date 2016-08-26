#!/bin/sh

nowdir=`dirname $0`

cd $nowdir

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

#export PATH=$PATH:/opt/local/bin
#export PATH=$PATH:/usr/local/bin:/Users/kato/local/bin
#export DYLD_LIBRARY_PATH=./lib:./libexec
#echo $DYLD_LIBRARY_PATH;

echo "infile " $2 > ./res.log
echo "outfile1 " $3 >> ./res.log
echo "outfile2 " $4 >> ./res.log
echo `which juman`  >> ./res.log
echo `echo $PATH `  >> ./res.log

#./bin/juman -r ./etc/jumanrc < $2 > $3 2> res.log
#./bin/juman -r ./etc/jumanrc < $2 > $3 
juman  < $2 > $3  2>> res.log
nowres=$?
if [ $nowres != 0 ];
then
  exit $nowres
fi
#./bin/knp -tab -r ./etc/knprc < $3 > $4
#knp -tab -ne -anaphora  < $3 > $4 2>> res.log
knp -tab -anaphora  < $3 > $4 2>> res.log
