//
//  utilisateurSoso.swift
//  ludik
//
//  Created by Apprenant 178 on 28/06/2024.
//

import SwiftUI

/// class Utilisateur qui créer des utilisateur avec leurs informations
class UtilisateurConnex{
    /// nom de l'utilisateur
    var nom: String
    /// prénom de l'utilisateur
    var prenom: String
    /// email de l'utilisateur
    var email: String
    /// mot de passe de l'utilisateur
    var mdp: String
    /// nom d'utilisateur
    var nomUtilisateur: String
    
    init(nom: String, prenom: String, email: String, mdp: String, nomUtilisateur: String) {
        self.nom = nom
        self.prenom = prenom
        self.email = email
        self.mdp = mdp
        self.nomUtilisateur = nomUtilisateur
    }
    
}

let utilisateur1 = UtilisateurConnex(nom: "La Muerte", prenom: "Emiliano", email: "Emilianolamuerte91@gmail.com", mdp: "Eldenring94gang", nomUtilisateur: "Emilianoquerico")

let utilisateur2 = UtilisateurConnex(nom: "Guada", prenom: "Patrice", email: "Patocheguadeloupe@gmail.com", mdp: "Patricebeaumetisse", nomUtilisateur: "Patpatrouille")

let utilisateur3 = UtilisateurConnex(nom: "dembo", prenom: "dembo", email: "dembojambedacier@gmail.com", mdp: "dembonadembo", nomUtilisateur: "Oeildelynx")

let utilisateur4 = UtilisateurConnex(nom: "lahlouh", prenom: "Sophian", email: "sosochefdeludik@gmail.com", mdp: "cr7goat", nomUtilisateur: "sks667")

