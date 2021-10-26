#!/bin/bash
running_ps=$(ps aux | grep queue)
needle='artisan queue'
if [[ "$running_ps" != "$needle" ]]; then
	echo "restarting"
	cd <PATH TO CODE> && php artisan queue:work &
else
	echo "already working"
fi
