#!/bin/bash
clear

objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )
# start part 4
  
  
#function for the code to Print the full list of values in your array
print_list(){
  echo "The list of items is..."
  sleep 1
  echo "${objectGenerator[@]}"
}
  
#funtion to print a direct value from the array.a You must pick a number between 0 and 9, which represents every item in the array
print_item(){
  echo ""
  read -p "What Item would you like to pick? (0-9):" answer
  echo "Your item is: ${objectGenerator[$answer]}"
  sleep 3
}

#This function creates a code to add another value to the backend of your array
add_item(){
  echo ""
  read -p "What is the name of the object you want to add?:" answer
  objectGenerator+=( $answer )
  print_list
}

#this function creates a code that will delete the last value in your array
remove_last_item(){
  echo ""
  echo "Deleting the last one now!"
  #before, i had this et as 'objectGenerator[9]', but I realize that putting 9 would only remove the last item in my origina array. so if i added more values
  #, the item would not be deleted
  unset 'objectGenerator[-1]'
  sleep 1
  print_list
}

#This function removes a specific value from your array
remove_item(){
  echo ""
  #if the value (0-9) is greater than 0 and less than the # in your array, it will remove the exact value of the # from your array
  read -p "Which object would you like to remove?(A number from 0 - the # in your box):" answer
  if [[ $answer -ge 0 && $answer -lt ${#objectGenerator[@]} ]]; then
    unset 'objectGenerator[answer]'
    echo "${objectGenerator[@]}"
  fi  
}

# function allows you to exit the game. Gives you the option to save your array to a file before exiting
exit_function(){
  read -p "Would you like to save before exiting? (y/n) " answer
  if [[ $answer == "y" ]]; then
    save_current_box
    sleep 1
    echo "Thanks for looking through the objects! "
    exit
  else 
    echo "Thanks for looking through the objects! "
    exit 
  fi      
}

# Function creates a code to save your array to a file in the data/ directory
save_current_box(){
  read -p "What should I name your file? " answer 
  echo "${objectGenerator[@]}" > "data/$answer.txt"
  echo "Your file has been saved as $answer.txt!"
  sleep 2
}

# Function creates a code to load a saved array from the data/ directory
load_previous_box(){
  list_files=/home/jamorant/Bashing_Boxes/data
  ls "$list_files"
  echo ""
  read -p "Which box would you like to load? " answer
  mapfile new_Object_Array < "data/$answer.txt"
  objectGenerator=("${new_Object_Array[@]}")
  sleep 1
  echo "Box is loading in ..."
  sleep 2
  echo "${new_Object_Array[@]}"
}

# Function creates a code that allows you to list all arrays you haved put in a file thats in the data/ directory
list_saved_boxes(){
  list_files=/home/jamorant/Bashing_Boxes/data
  echo ""
  echo "Every box you have saved is loading in... "
  sleep 2
  echo ""
  ls "$list_files"
}

# This function creates the code to delete a file from your data/ directory
delete_saved_box(){
  list_files=/home/jamorant/Bashing_Boxes/data
  sleep 2
  ls "$list_files"
  echo ""
  read -p " Which file do you want to delete? (Just the name, NO .txt) " answer
  echo ""
  sleep 1
  rm "data/$answer.txt"
  echo "Your file $answer.txt has been deleted. "
}


menu(){
  echo -e "
   Full Box of objects; 1
   Specific object at certain position; 2
   Adding a new item to the list; 3
   Remove the final item on the list; 4
   Remove a specific item from the list; 5
   Exit; 6
   Saving your current Box to a file; 7
   Loading a previously saved Box; 8
   Listing existing saved Box; 9
   Deleting a saved box; 10
   Generating A Random box from file; 11
  " 
  echo ""
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

  echo ""
  menu
}  


echo ""
echo "Welcome to the Object game!"
sleep 2
echo ""  
menu





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