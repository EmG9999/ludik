//
//  SwiftUIView.swift
//  ludik
//
//  Created by Apprenant 142 on 27/06/2024.
//

import SwiftUI
/**
 Documentation de la structure Classe.
 
 Cette structure représentente un identifiable de type Classe avec des focntionnalité spécifique
 */

struct Classe: Identifiable{
    var id = UUID()
    var niveau: String
    var couleur: Color
}
