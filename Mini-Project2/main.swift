//
//  main.swift
//  Mini-Project2
//
//  Created by Ts SaM on 14/7/2023.
//

import Foundation

var board = Board(size: 8)
solveAllQueens(board: &board)
print("Possible ways: \(possibilityCount)")

print()
var board2 = Board(size: 8)
solve8Queens(board: &board2)
print("Number of recursive calls: \(count)")
