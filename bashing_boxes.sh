#!/bin/bash


objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )
  
while true; do  
  print_List()
  {
    echo "The list of items is..."
      sleep 1
      echo "${objectGenerator[@]}"
  }



  print_Item()
  {

   echo ""
   read -p "What Item would you like to pick? (0-9):" answer
   echo "Your item is: ${objectGenerator[$answer]}"
  }

  add_Item()
  {

   echo ""
   read -p "What is the name of the object you want to add?:" answer
   objectGenerator+=( $answer )
   echo "${objectGenerator[@]}"
  }

  remove_Last_Item()
  {
      
    echo ""
    unset 'objectGenerator[9]'
    echo "The list of items is now... "
    echo "${objectGenerator[@]}"
  }

  remove_Item()
  {

   echo ""
    read -p "Which object would you like to remove?(0-9):" answer
    if [[ $answer -ge 0 && $answer -lt ${#objectGenerator[@]} ]]; then
      unset 'objectGenerator[answer]'
      echo "${objectGenerator[@]}"
    fi  
  }

   


  echo "The list of items is..."
  sleep 2
  echo "${objectGenerator[@]}"
  #sleep 2
  #echo "${objectGenerator[4]}"
  #sleep 2
  #echo "${objectGenerator[8]}"
  #sleep 2
  #echo "${objectGenerator[0]}"
  sleep 2

  #print_Item
    

  echo "Full List of objects; 1"
  echo "Specific object at certain position; 2"
  echo "Adding a new item to the list; 3"
  echo "Remove the final item on the list; 4"
  echo "Remove a specific item from the list; 5"
  echo "Exit; 6"

  read -p "Which option would you like to choose?(1-6): " answer

  case $answer in
    1) print_List ;;
    2) print_Item ;;
    3) add_Item ;;
    4) remove_Last_Item ;;
    5) remove_Item ;;
    6)
      echo "Thanks for looking through the objects! "
      exit ;;
  esac
done






#for object in "${objectGenerator[@]}"; do
    # echo "Your item is: $object"
    #done

#      read -p "Which option would you like to choose?(1-6):" answer
 ##
 #    print_List
  #  elif [[ $answer == "2" ]];then
   #   print_Item
    #elif [[ $answer == "3" ]];then
  #    add_Item
   # elif [[ $answer == "4" ]];then
    #  remove_Last_Item
    #elif [[ $answer == "5" ]];then
      #sleep 2
     # remove_Item
    #elif [[ $answer == "6" ]];then
     # echo "Thanks for looking through the objects!"
      #sleep 1
      #exit
    #fi 