#!/bin/bash

hora=$(date +%H)

if [ $hora -ge "14" ] && [ $hora -le "16" ]; then
	echo "Hora de comer."
else
	echo "No es hora."
fi
