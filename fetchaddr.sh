#!/usr/bin/env bash

SINCE=$(egrep -o "20[0-9]{2}-[0-9]{2}-[0-9]{2} [0-9]{2}:[0-9]{2}" ~/.lbdb/m_inmail.list |sort -n|tail -n1)
find ~/Maildir/  -type f -newermt "${SINCE}" -print0 | \
  xargs -0 -n 1 -r /bin/bash -c 'lbdb-fetchaddr -a < "$1"' lbdb-fetchaddr

# remove dups
/usr/lib/lbdb/lbdb-munge
