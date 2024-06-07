//
//  ViewModel.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import Combine

class ViewModel: ObservableObject {
    // creation du tableau sur lesquelles les pieces vont glisser
    let width: Int = 10
    let height: Int = 26
    
    @Published var boardMatrix: [[SquareGame?]]
    @Published var activeShape: Shape? = nil // difference les pieces dans leur forme active (tombante)
    
    var timer = Timer.publish(every: 0.5, on: .main, in: .common)    //sert a faire tomber les pieces toutes les demi secondes
    var cancellableSet: Set<AnyCancellable> = []
    
    init() {
        boardMatrix = Array(repeating: Array(repeating: nil, count: width), count: height)
        if activeShape == nil {
            activeShape = OShape()
        }
        timer // Sert a reinitialiser l'animation tombante a chaque case traversé. La piece reste figé si l'on enlève.
            .autoconnect()
            .sink { timer in self.moveDown()
            }
            .store(in: &cancellableSet)
    }
    
    
    func moveDown() {
        activeShape?.moveDown()
        
    }
    
    // Ces fonctions permettent d'amenner les carrées dans le tableau 
    private func getSquareGameInMatrix(x: Int, y: Int) -> SquareGame? {
        if y >= 0, x >= 0, y < height, x < width {
            return boardMatrix[y][x]
        } else {
            return nil
        }
    }
    
    func getSquareGame(x: Int, y: Int) -> SquareGame? {
        if let activeShape = activeShape, activeShape.isInPosition(x: x, y: y) {
                  return SquareGame(x: x, y: y, color: activeShape.color)
              }
              
        if let squareGame = getSquareGameInMatrix(x: x, y: y), squareGame.occupied {
                  return squareGame
              }
              
              return nil
        
    }
// fonctions pour le mouvement des pieces
func moveLeft() {
    activeShape?.moveLeft()
}
func moveRight() {
    activeShape?.moveRight()
}
func rotateShape() {
    activeShape?.rotateToLeft()
}

}
