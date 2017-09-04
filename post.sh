#!/bin/bash - 
#===============================================================================
#
#          FILE: post.sh
# 
#         USAGE: ./post.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dusty Carver 
#  ORGANIZATION: Double Ai
#       CREATED: 12/17/2016 09:24
#      REVISION:  .01
#===============================================================================

set -o nounset                              # Treat unset variables as an error
alias sed='gsed'

node btc.js | python -m json.tool > ordered
cat ordered | grep bid | gsed 's/.*"\([0-9\.]\+\).*/ \1/'
