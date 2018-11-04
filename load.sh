#!/bin/bash

if [ ! -n "$1" ]; then
  echo "file of bin is empty"
  exit
fi

if [ ! -f "$1"]; then
  echo "file is not exist!"
  exit
fi

echo "#########################################################################################"
echo "############ load start ###############"
#openocd -f interface/stlink-v2.cfg -f ./target/stm32f1x.cfg -c init -c "reset halt" -c "flash write_image erase nuttx/nuttx.bin 0x08000000"
openocd -f interface/stlink-v2.cfg -f ./target/stm32f1x.cfg -c init -c "reset halt" -c "flash write_image erase $1 0x08000000"
echo "complete"
