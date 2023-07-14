//
//  QueensSolver.swift
//  SwiftAGDS
//
//  Created by Derrick Park on 2019-03-13.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import Foundation

/// Write a function solveQueens that accepts a Board as a parameter
/// and tries to place 8 queens on it safely.
///
/// - Your method should stop exploring if it finds a solution
/// - You are allowed to change the function header (args or return type)
/// - Your total recursive calls should not exceed 120 times.


func solveAllQueens(board: inout Board) {
    solveAllQueensHelper(board: &board, col: 0)
}

var possibilityCount = 0
func solveAllQueensHelper(board: inout Board, col: Int) {
    if col >= board.size {
        print(board)
        possibilityCount += 1
        return
    }
    for row in 0..<board.size {
        if board.isSafe(row: row, col: col) {
            board.place(row: row, col: col)
            solveAllQueensHelper(board: &board, col: col + 1)
            board.remove(row: row, col: col)
        }
    }
}


func solve8Queens(board: inout Board) -> Bool {
    return solve8QueensHelper(board: &board, col: 0)
}

var count = 0
func solve8QueensHelper(board: inout Board, col: Int) -> Bool {
    count += 1
    if col >= board.size {
        print(board)
        return true
    }
    for row in 0..<board.size {
        if board.isSafe(row: row, col: col) {
            board.place(row: row, col: col)
            if solve8QueensHelper(board: &board, col: col + 1) {
                return true
            }
            board.remove(row: row, col: col)
        }
    }
    return false
}

