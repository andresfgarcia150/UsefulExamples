#! /bin/bash

# Execution permissions
# 755 for the owner, 777 for any user
# Write the following in the terminal, (in the folder where the script is)
#chmod 755 scriptExample.sh


clear
mensaje='Hola mundo'
echo "Mi primer mensaje: $mensaje"

# Running two programs sequentially
START=$(date +%s)
./helloWorld text_hello.txt
./counting
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Time not parallel: $DIFF s"

# Running two programs in parallel
START=$(date +%s)
parallel ::: './helloWorld text_hello.txt' './helloWorld text_hello2.txt'
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Time parallel: $DIFF s"

