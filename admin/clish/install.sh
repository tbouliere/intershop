#!/usr/bin/env bash

OUTPUT=$(mktemp -d)

wget -O "${OUTPUT}/clish" https://raw.githubusercontent.com/tbouliere/intershop/master/admin/clish/usr/local/bin/clish

mv "${OUTPUT}/clish" /usr/local/bin/clish
chmod 755 /usr/local/bin/clish

wget -O "${OUTPUT}/clish" https://raw.githubusercontent.com/tbouliere/intershop/master/admin/clish/etc/bash_completion.d/clish

mv "${OUTPUT}/clish" /etc/bash_completion.d/clish

chmod 755 /etc/bash_completion.d/clish

source /etc/bash_completion.d/clish

rm -r "${OUTPUT}"
