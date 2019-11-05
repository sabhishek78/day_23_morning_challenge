// Challenge 1
// Write test cases for the given challenges

// Challenge - Conway's Game of Life
// https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Rules
// The Game of Life, also known simply as Life, is a cellular automaton devised
// by the British mathematician John Horton Conway in 1970.
// Write a function which performs one step of the life algorithm
List<List<int>> gameOfLife(List<List<int>>inputBoard){

  List<List<int>> resultBoard=[];
  for(int i=0;i<inputBoard.length;i++){
    List<int> resultRow=[];
    for(int j=0;j<inputBoard[i].length;j++){
      resultRow.add(deadOrAlive(inputBoard,i,j));
    }
    resultBoard.add(resultRow);
  }
  return resultBoard;
}
int deadOrAlive(List<List<int>> inputBoard, int row,int col){

  int count=0;
  for(int offsetRow=-1;offsetRow<=1;offsetRow++){
    for(int offsetCol=-1;offsetCol<=1;offsetCol++){
      if(cellCount(inputBoard,row+offsetRow,col+offsetCol)){
        count++;
      }
    }
  }
  //print(count);
  if(inputBoard[row][col]==1){
    count--;
  }
 // print(count);
  //game of life algorithm
  if(inputBoard[row][col]==1){
    if (count<2){
      return 0;
    }
    if(count==2 || count ==3){
      return 1;
    }
    if(count >3){
      return 0;
    }
  }
  else if(inputBoard[row][col]==0){

    if(count ==3){
      return 1;
    }
   else {
     return 0;
    }
  }

}
bool cellCount(List<List<int>>inputBoard,int row, int col){
  if(row<0){
    return false;
  }
  if(col<0){
    return false;
  }
  if(row>=inputBoard.length){
    return false;
  }
  if(col>= inputBoard[row].length){
    return false;
  }
  return inputBoard[row][col]==1;
}
main() {
print(gameOfLife([[1,0,1],[1,1,0],[1,1,0]]),); //[[1,0,0],[0,0,1],[1,1,0]]
print(gameOfLife([[0,0,0,0,0,0,0],[0,0,1,1,0,0,0],[0,0,1,1,0,0,0],[0,0,1,0,0,0,0],[0,0,0,0,0,0,0]]));
}
