#!/bin/bash

touch  data.txt
objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )
  
while true; do  

  print_List(){
    echo "The list of items is..."
    sleep 1
    echo "${objectGenerator[@]}"
  }

  print_Item(){
   echo ""
   read -p "What Item would you like to pick? (0-9):" answer
   echo "Your item is: ${objectGenerator[$answer]}"
   sleep 3
  }

  add_Item(){
   echo ""
   read -p "What is the name of the object you want to add?:" answer
   objectGenerator+=( $answer )
   print_List
  }

  remove_Last_Item(){
    echo ""
    echo "Deleting the last one now!"
    unset 'objectGenerator[-1]'
    sleep 1
    echo "After deleting the last item, this list of items is now... "
    sleep 2
    echo "${objectGenerator[@]}"
  }

  remove_Item(){
   echo ""
    read -p "Which object would you like to remove?(0-9):" answer
    if [[ $answer -ge 0 && $answer -lt ${#objectGenerator[@]} ]]; then
      unset 'objectGenerator[answer]'
      echo "${objectGenerator[@]}"
    fi  
  }

  exit_Function(){
    read -p "Would you like to save before exiting? (y/n) " answer
    if [[ $answer == "y" ]]; then
      save_CurrentBox
      sleep 1
      echo "Thanks for looking through the objects! "
      exit
    else 
      echo "Thanks for looking through the objects! "
      exit 
    fi      
  }

   save_CurrentBox(){
      read -p "What should I name your file? " answer
      echo "${objectGenerator[@]}" > "data/$answer.txt"
      echo "Your file has been saved as $answer.txt!"
      sleep 2
   }


   load_PreviousBox(){
      :
   }

   list_ExistingBox(){
      :
   }

   delete_SavedBox(){
    read -p "Which file do you want to delete? (Just the name, NO .txt) " answer
    rm "data/$answer.txt"
    echo "Your file $answer.txt has been deleted. "
   }


  #echo "The list of items is..."
  #sleep 2
  #echo "${objectGenerator[@]}"
  #sleep 2
  #echo "${objectGenerator[4]}"
  #sleep 2
  #echo "${objectGenerator[8]}"
  #sleep 2
  #echo "${objectGenerator[0]}"
  #sleep 2

  #print_Item
  echo ""
  echo "Welcome to the Object game!"
  sleep 2
  echo ""  

  echo "Full Box of objects; 1"
  echo "Specific object at certain position; 2"
  echo "Adding a new item to the list; 3"
  echo "Remove the final item on the list; 4"
  echo "Remove a specific item from the list; 5"
  echo "Exit; 6"
  echo "Saving your current Box to a file; 7"
  echo "Loading a previously saved Box; 8"
  echo "Listing existing saved Box; 9"
  echo "Deleting a saved box; 10"

  read -p "Which option would you like to choose?(1-10): " answer

  case $answer in
    1) print_List ;;
    2) print_Item ;;
    3) add_Item ;;
    4) remove_Last_Item ;;
    5) remove_Item ;;
    6) exit_Function ;;
    7) save_CurrentBox ;;
    8) load_PreviousBox ;;
    9) list_ExistingBox ;;
    10) delete_SavedBox ;; 
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