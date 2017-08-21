#!/bin/bash
BITCORE="../bitcore-node/bin/bitcore-node"
stop_program ()
{
  pidfile=$1

  echo "Stopping Process - $pidfile. PID=$(cat $pidfile)"
  kill -9 $(cat $pidfile)
  rm $pidfile
  
}
stop_program pids/insight.pid