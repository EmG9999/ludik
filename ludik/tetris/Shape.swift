//
//  Shape.swift
//  ludik
//
//  Created by Apprenant 165 on 06/06/2024.
//

import Foundation
import SwiftUI

protocol Shape {
    // creation de la forme des pieces + leur couleur + leur mouvements (leur comportement)
    var color: Color { get } // couleur des pieces
    var ocuppiedPositions: [GridPosition] { get set } // position des pieces sur le tableau
    
    mutating func moveDown()
    mutating func moveUp()
    mutating func moveLeft()
    mutating func moveRight()     // -------leur mouvements
                                              
    mutating func rotateToRight()
    mutating func rotateToLeft()
    
    func isInPosition(x: Int, y: Int) -> Bool     // savoir si une pieces est oui ou non sur une position du tableau (utile pour les faire disparaitre quand on marquera des points)

}
extension Shape {
    // extension du protocol shape
    // cherche a savoir si la position des pieces coincides avec la position du tableau
    func isInPosition(x: Int, y: Int) -> Bool {
        return ocuppiedPositions.first { item in
            item.x == x && item.y == y
        } != nil
    }
    
}
extension Shape {
    // deuxieme extension de shape pour definir les mouvement des pieces sur l'axe y (haut/bas)
    //
    mutating func moveDown() {
        for index in ocuppiedPositions.indices {
            ocuppiedPositions[index].y += 1          //prends les valeurs de occupiedPosition et incremente son index de 1 pour bouger                                         la piece vers le haut
        }
    }
    
    mutating func moveUp() {
        for index in ocuppiedPositions.indices {    // idem mais vers le bas donc il soustrait 1 a l'index de la position de la piece
            ocuppiedPositions[index].y -= 1
        }
    }
}
extension Shape {
    // Idem mais pour l'axe x (gauche/droite)
  mutating func moveLeft() {
      for index in ocuppiedPositions.indices {
          ocuppiedPositions[index].x -= 1
      }
  }
  
  mutating func moveRight() {
      for index in ocuppiedPositions.indices {
          ocuppiedPositions[index].x += 1
      }
  }
}
extension Shape {
    // extension de shape pour pivoter les pieces sur elles memes
    mutating func rotateToRight() {
        if let pivot = ocuppiedPositions.first(where: { $0.isPivot == true }) {
                   
                   let px = pivot.x
                   let py = pivot.y
                   
                   for index in ocuppiedPositions.indices {
                       let y1 = ocuppiedPositions[index].y
                       let x1 = ocuppiedPositions[index].x
                       
                       let x2 = (y1 + px - py)
                       let y2 = (px + py - x1)
                       
                       ocuppiedPositions[index].x = x2
                       ocuppiedPositions[index].y = y2
                   }
               }
    }
    mutating func rotateToLeft() {
        if let pivot = ocuppiedPositions.first(where: { $0.isPivot == true }) {
                  let px = pivot.x
                  let py = pivot.y
                  
                  for index in ocuppiedPositions.indices {
                      let y1 = ocuppiedPositions[index].y
                      let x1 = ocuppiedPositions[index].x
                      
                      let x2 = (px + py - y1)
                      let y2 = (x1 + py - px)
                      
                      ocuppiedPositions[index].x = x2
                      ocuppiedPositions[index].y = y2
                  }
              }
          }
    }

