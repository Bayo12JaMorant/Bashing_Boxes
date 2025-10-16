#!/bin/bash


objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )
  
  
  print_List()
  {
  echo "The list of items is..."
  sleep 2
  echo "${objectGenerator[@]}"
  }

 

  print_Item()
  {
   sleep 1
   read -p "What Item would you like to pick?:" answer
  for object in "${objectGenerator[@]}"; do
   echo "Your item is: $object"
  done	
  }

  add_Item()
  {
    sleep 1
  }

  remove_Last_Item()
  {
    sleep 1
  }

  remove_Item()
  {
    sleep 1
  }

 


    echo "The list of items is..."
    sleep 2
    echo "${objectGenerator[@]}"
    sleep 2
  

    echo "Full List of objects; 1"
    echo "Specific object at certain position; 2"
    echo "Adding a new item to the list; 3"
    echo "Remove the final item on the list; 4"
    echo "Remove a specific item from the list; 5"
    echo "Exit; 6"

    read -p "Which option would you like to choose?(1-6):" answer
  if [[ $answer == "1" ]];then
    sleep 2
    print_list
  elif [[ $answer == "2" ]];then
    sleep 2
    print_Item
  elif [[ $answer == "3" ]];then
    sleep 2
    add_Item
  elif [[ $answer == "4" ]];then
    sleep 2
    remove_Last_Item
  elif [[ $answer == "5" ]];then
    sleep 2
    remove_Item
  elif [[ $answer == "6" ]];then
    echo "Thanks for looking through the objects!"
    sleep 2
    exit
  fi  
  s

          



