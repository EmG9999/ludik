//
//  ContentView.swift
//  ludik
//
//  Created by Apprenant 165 on 03/06/2024.
//

import SwiftUI
import SwiftData

extension Color{
    /// Couleurs Gradiant boutons de sélection de la bonne réponse
    static let buttonChoiceOrange3 = Color(red: 236/255, green: 144/255, blue: 5/255)
    static let buttonChoiceRed3 = Color(red: 228/255, green: 75/255, blue: 84/255)
    /// Couleurs Gradiant boutons "commeneer"
    static let buttonOrange4
    = Color(red: 255/255, green: 171/255, blue: 0/255)
    static let buttonOrange5
    = Color(red: 153/255, green: 103/255, blue: 0/255)
}
struct JeuxQuizView2: View {
    /// - La variable `mots` est un tableau contenant des tuples. Chaque tuple représente un mot avec son image , l'orthographe correcte et une liste qui contient la bonne est des mauvaises réponses
    ///- Chaque tuple represente:`(image, orthographe correcte, [réponse])`.
    @State var mots: [Word] = [
        Word(image: "Hippopotamus", correct: "hippopotame", rep: ["hippopotame", "ippopotame", "hipopotame"]),
        Word(image: "Chevaux", correct: "Chevaux", rep: ["chevau",  "chevo", "Chevaux"]),
        Word(image: "Citrouille", correct: "Citrouille", rep: ["Citrouye", "Citrouille", "Citroulle"])
        /// Ajoutez ici d'autres mots avec leurs orthographes corrects et incorrects
        ]
    
    @State var words = 0
    @State var currentIndex = 0
    @State var showCorrectAnswer = false
    @State var timeRemaining = 30
    @State var timerRunning = false
    @State var gameStarted = false
    
 
    ///Cette fonction est appelée lorsque le joueur clique sur le bouton "Commencer", elle réinitialise le score, l'index du mot actuel, et les indicateurs de fin de partie, puis lance le minuteur avec `startTimer()`.
    func commencerJeux() {
        words = 0
        currentIndex = 0
        showCorrectAnswer = false
        gameStarted = true
    }
    /// Cette fonction démarre un minuteur qui décrémente `timeRemaining` toutes les secondes jusqu'à ce que le temps soit écoulé. Une fois le minuteur terminé, il arrête le jeu en mettant `timerRunning` et `gameStarted` à `false`, et réinitialise l'index du mot actuel à 0
    func startTimer() {
        timeRemaining = 30
        timerRunning = true
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if timeRemaining > 0 && timerRunning {
                timeRemaining -= 1
            } else {
                timer.invalidate()
                timerRunning = false
                gameStarted = false
                // Réinitialise la sélection des mots lorsque le jeu est relancé
                currentIndex = 0
            }
        }
    }
    /// Cette fonction est appelée lorsque le joueur sélectionne une réponse. Si le jeu est en cours et que la réponse est correcte, elle incrémente le score. Elle affiche également la réponse correcte en mettant `showCorrectAnswer` à `true`.
    func checkAnswer(_ index: Int) {
        if gameStarted && mots[currentIndex].rep[index] == mots[currentIndex].correct{
        words += 1
        }
        showCorrectAnswer = true
    }
    /// Cette fonction est appelée lorsque l'alerte montrant la réponse correcte est fermée. Elle passe à la question suivante en incrémentant l'index du mot actuel, en s'assurant que l'index reste dans les limites du tableau `mots`, et en réinitialisant `showCorrectAnswer` à `false`.
    func nextQuestion() {
        currentIndex = (currentIndex + 1) % mots.count
        showCorrectAnswer = false
    }
    
    var body: some View {
        ZStack {
            LinearGradient(colors:[.orange, .red], startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Quiz des Lettres")
                    .font(.custom("Ranchers-Regular", size: 40))
                    .padding(.bottom, 70)
                HStack {
                    VStack {
                        Text("Mots: \(words)/20")
                        Text("Score:10")
                    }.padding(.leading, 40)
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Image("Chrono")
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text(":     \(timeRemaining)")
                        }
                        Button {
                            // print("pause")
                        } label: {
                            Image("BoutonPause")
                        }
                    } .padding(.trailing, 50)
                }
                .font(.custom("Ranchers-Regular", size: 25))
                Image(mots[currentIndex].image)
                    .resizable()
                    .frame(width: 130, height: 130, alignment: .center)
                /// Titre pour ces  3 bouttons
                Text("Comment s'écrit ce mot ?")
                    .font(.custom("Ranchers-Regular", size: 25))
                    .padding(.bottom)
                /// 3 bouttons de la sélectinn de la bonne réponse
                ForEach (0..<3) { index in
                        Button(
                            action: {
                                checkAnswer(index)
                            },
                            label: {  Text(mots[currentIndex].rep[index])
                                    .frame(width: 267,height: 74)
                                    .background(LinearGradient(
                                        colors: [.buttonChoiceOrange3, .buttonChoiceRed3],
                                        startPoint: .leading,
                                        endPoint: .trailing))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 20)
                                            .stroke(.black, lineWidth: 2))
                                    .background(.orange)
                                    .cornerRadius(20)
                                    .padding(.bottom, 20)}
                        )
                    .font(.custom("Ranchers-Regular", size: 40))
                    .foregroundColor(.white)
                }
                ///Bouton "Commencer"
                Button(
                    action: {
                        commencerJeux()
                        startTimer()
                    },
                    label: {
                        Text("Commencer")
                            .frame(width: 327,height: 48)
                            .background(LinearGradient(
                                colors: [.buttonOrange4, .buttonOrange5],
                                startPoint: .leading,
                                endPoint: .trailing))
                            .cornerRadius(80)
                            .foregroundColor(.white)
                            .font(.custom("Ranchers-Regular", size: 30))
                    }
                    
                )
                .disabled(timerRunning)
                Spacer()
            }
            
            .alert(isPresented: $showCorrectAnswer) {
                Alert(title: Text("Réponse"), message: Text("La réponse correcte est \(mots[currentIndex].correct)"), dismissButton: .default(Text("OK")) {
                    nextQuestion()})
                 
            }
             
            
        }.onAppear(){
            //mots = wordsData
        }
        
    }
    
}

#Preview {
    JeuxQuizView2()
}

