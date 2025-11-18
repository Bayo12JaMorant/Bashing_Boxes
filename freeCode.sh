#!/bin/bash


objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )




#while true; do
	  
	#echo -e "\n $objectGenerator"
	#echo -e "\n ${objectGenerator[0]}"
#	echo	 -e "\n ${objectGenerator[5]}"
###	echo -e "\n ${#objectGenerator[@]}"

#	for (( i = 9; i < $objectGenerator; i++ )); do
#		echo -e "The amount of objects is ${objectGenerator[@]} "
#	done	
#done


 mapfile -t objectGenerator < <( shuf -n "$random_answer" home/jamorant/Bashing_Boxes/warehouse_of_objects.txt  )