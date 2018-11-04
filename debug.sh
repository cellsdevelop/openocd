#!/bin/bash



echo "#########################################################################################"
echo "############ debug start ###############"
openocd -f interface/stlink-v2.cfg -f ./target/stm32f1x.cfg -c init -c "reset halt" 
echo "complete"
