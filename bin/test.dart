import 'main.dart';

import 'package:test/test.dart';

void main() {


  test('game of life', (){

    expect(gameOfLife([[1,0,1],[1,1,0],[1,1,0]]),[[1, 0, 0], [0, 0, 1], [1, 1, 0]]);
    expect(gameOfLife([[0,0,0,0,0,0,0],[0,0,1,1,0,0,0],[0,0,1,1,0,0,0],[0,0,1,0,0,0,0],[0,0,0,0,0,0,0]]),[[0, 0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0, 0], [0, 0, 1, 1, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0]]);
    expect(gameOfLife([]),[]);
  });



}