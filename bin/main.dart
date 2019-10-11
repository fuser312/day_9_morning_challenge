//import 'dart:indexed_db';

main() {
  print(uniqueSort([6, 7, 3, 2, 1]));
  print(uniqueSort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]));

  print(sumOfEvens([[1, 0, 2],[5, 5, 7],[9, 4, 3]]));

  print(unmix("hTsii  s aimex dpus rtni.g"));
  print(unmix("badce"));
}

// Challenge 1 - Purge and Organize
// Given a list of numbers, write a function that returns an list that...
// 1. Has all duplicate elements removed .
// 2. Is sorted from least to greatest value.
// Examples
// uniqueSort([1, 2, 4, 3]) ➞ [1, 2, 3, 4]
// uniqueSort([1, 4, 4, 4, 4, 4, 3, 2, 1, 2]) ➞ [1, 2, 3, 4]
// uniqueSort([6, 7, 3, 2, 1]) ➞ [1, 2, 3, 6, 7]

List uniqueSort(List list) {
  List newList = [];
  for(int i = 0; i < list.length; i++){
    if(newList.contains(list[i])){
      continue;
    }
    else{
      newList.add(list[i]);
    }

  }
  newList.sort();
  return newList;
}

// Challenge 2 - Sum of all Even Numbers in a Matrix
// Create a function that returns the sum of all even elements in a 2D matrix.
// Examples
// sumOfEvens([
//   [1, 0, 2],
//   [5, 5, 7],
//   [9, 4, 3]
// ]) ➞ 6
//
// 2 + 4 = 6
//
// sumOfEvens([
//   [1, 1],
//   [1, 1]
// ]) ➞ 0
//
// sumOfEvens([
//   [42, 9],
//   [16, 8]
// ]) ➞ 66
//
// sumOfEvens([
//   [],
//   [],
//   []
// ]) ➞ 0


int sumOfEvens(List list){
  int sum = 0;
  for(int i =  0; i < list.length; i++){
    for(int j = 0; j < list[i].length; j++){
      if((list[i][j])%2 == 0){
        sum = sum + list[i][j];
      }
    }
  }
  return sum;
}

// Challenge 3 - Unmix My Strings
// 'lPaeesh le pemu mnxit ehess rtnisg!' Oh, sorry, that was supposed to say: Please help me unmix these strings!
// Somehow my strings have all become mixed up; every pair of characters has been swapped.
// Help me undo this so I can understand my strings again.
// Example:
// unmix("123456") ➞ "214365"
//
// unmix("hTsii  s aimex dpus rtni.g") ➞ "This is a mixed up string."
//
// unmix("badce") ➞ "abcde"

String unmix(String string){
  String x =  "";
  for(int i = 0; i< string.length-1; i = i+2){
    x = x + string[i+1] + string[i];
  }

  if(string.length%2 != 0){
    x = x + string[string.length-1];
  }
  return(x);
}