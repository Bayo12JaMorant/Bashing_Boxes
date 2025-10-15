#!/bin/bash


objectGenerator=( "Puzzle" "Saw" "Surfboard" "Holly" "AvocadoTree" "Scanner" "Typewriter" "Nightstand" "Mint" "TapeMeasure" )

print_List()
{
  echo "The list of items is..."
  sleep 2
  echo "${objectGenerator[@]}"
}
print_list

print_Item()
{
   sleep 1
   echo "What Item would you like to pick?"
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

exit_Function()
{
  sleep 1
}