#!/bin/bash


touch  data.txt
objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )
  
while true; do  
  #function for the code to Print the full list of values in your array
  print_list(){
    echo "The list of items is..."
    sleep 1
    echo "${objectGenerator[@]}"
  }
  
  #funtion to print a direct value from the array.a You must pick a number between 0 and 9, which represents
  print_item(){
   echo ""
   read -p "What Item would you like to pick? (0-9):" answer
   echo "Your item is: ${objectGenerator[$answer]}"
   sleep 3
  }

  add_item(){
   echo ""
   read -p "What is the name of the object you want to add?:" answer
   objectGenerator+=( $answer )
   print_List
  }

  remove_last_item(){
    echo ""
    echo "Deleting the last one now!"
    unset 'objectGenerator[-1]'
    sleep 1
    echo "After deleting the last item, this list of items is now... "
    sleep 2
    echo "${objectGenerator[@]}"
  }

  remove_item(){
    echo ""
    read -p "Which object would you like to remove?(0-9):" answer
    if [[ $answer -ge 0 && $answer -lt ${#objectGenerator[@]} ]]; then
      unset 'objectGenerator[answer]'
      echo "${objectGenerator[@]}"
    fi  
  }

  exit_function(){
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

  save_current_box(){
    read -p "What should I name your file? " answer 
    echo "${objectGenerator[@]}" > "data/$answer.txt"
    echo "Your file has been saved as $answer.txt!"
    sleep 2
  }


  load_previous_box(){
    list_files="/home/jamorant/Bashing_Boxes/data"
    mapfile


  }

 list_saved_boxes(){
    list_files=/home/jamorant/Bashing_Boxes/data
    echo ""
    echo "Every box you have saved is loading in... "
    sleep 2
    echo ""
    ls "$list_files"
  }

 delete_saved_box(){
    list_files=/home/jamorant/Bashing_Boxes/data
    sleep 2
    ls "$list_files"
    read -p "Which sudo apt install code
    echo ""file do you want to delete? (Just the name, NO .txt) " answer
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
    1) print_list ;;
    2) print_item ;;
    3) add_item ;;
    4) remove_last_item ;;
    5) remove_item ;;
    6) exit_function ;;
    7) save_current_box ;;
    8) load_previous_box ;;
    9) list_saved_boxes ;;
    10) delete_saved_box ;; 
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