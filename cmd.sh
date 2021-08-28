#!/bin/bash
cnt=0
limit=$1
while [ $cnt -le $limit ]; do
 rd=`echo $RANDOM | tr '[0-9]' '[a-z]'`
 fn=`echo $RANDOM | tr '[0-9]' '[a-z]'`
 echo "Create dir $rd"
 mkdir -p kurt${cnt}/$rd/kurt${cnt}
 touch kurt${cnt}/$rd/kurt${cnt}/$rd_$fn.jpg
 cnt=$(( cnt + 1 ));
done
