#!/bin/bash


objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )
  
echo -e "\n $objectGenerator"
echo -e "\n ${objectGenerator[0]}"
echo -e "\n ${objectGenerator[5]}"
echo -e "\n ${objectGenerator[2]}"
echo -e "\n ${objectGenerator[@]}"
echo -e "\n ${#objectGenerator[@]}"