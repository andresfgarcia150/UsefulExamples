#! /bin/bash

# Execution permissions
# 755 for the owner, 777 for any user
# Write the following in the terminal, (in the folder where the script is)
# chmod 755 script_name.sh
# or:
# chmod a+x script_name.sh


clear
mensaje='Hola mundo'
echo "Mi primer mensaje: $mensaje"
max_val=5

# A simple for
for ((i=0; i<=${max_val}; i++))
do
	echo Case $i
done

# Another for
for i in {1,3,5}
do
        echo Case $i
done


