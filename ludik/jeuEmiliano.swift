//
//  jeuEmiliano.swift
//  ludik
//
//  Created by Apprenant 178 on 07/06/2024.
//

import SwiftUI

struct newjeux: View {
    @State private var correctAnswer = 0
       @State private var choiceArray : [Int] = [0, 1, 2, 3]
       @State private var firstNumber = 0
       @State private var secondNumber = 0
       @State private var difficulté = 100
       @State private var score = 0
    private let startColor: Color = .orange
    private let endColor: Color = .red
       
       var body: some View {
           
           ZStack {
               LinearGradient(colors: [startColor, endColor], startPoint: .center, endPoint: .bottom)
                   .edgesIgnoringSafeArea(.all)
               
               VStack {
                   Text("\(firstNumber) + \(secondNumber)")
                       .font(.custom("Ranchers", size: 40))
                     
                   
                   HStack {
                       ForEach(0..<2) {index in
                           Button {
                               answerIsCorrect(answer: choiceArray[index])
                               generateAnswers()
                           } label: {
                               AnswerButton(number: choiceArray[index])
                           }
                       }
                   }
                   
                   HStack {
                       ForEach(2..<4) {index in
                           Button {
                               answerIsCorrect(answer: choiceArray[index])
                               generateAnswers()
                           } label: {
                               AnswerButton(number: choiceArray[index])
                           }
                       }
                   }
                   Text("Score: \(score)")
                       .font(.headline)
                       .bold()
               }.onAppear(perform: generateAnswers)
           }
           
       }
       
       func answerIsCorrect(answer: Int){
           if answer == correctAnswer {
               score += 1
           } else {
               score -= 1
           }
           if score > 10 {
               difficulté += 100 // la diff s'incremente a chaque serie de 10 rep
           }
           if score > 20 {
               difficulté += 800
           }
           if score > 20 {
               difficulté += 9000
           }
       }
       
       
       func generateAnswers(){
           firstNumber = Int.random(in: 0...(difficulté/2))
           secondNumber = Int.random(in: 0...(difficulté/2))
           var answerList = [Int]() // genere une liste vide des reponses possibles
           
           correctAnswer = firstNumber + secondNumber
           
           for _ in 0...2 {
               answerList.append(Int.random(in: 0...difficulté))
           }
           
           answerList.append(correctAnswer) // met la bonne reponses dans la liste
           
           choiceArray = answerList.shuffled() // met la bonne reponses dans un endroit aleatoire
       }
   
   }


struct newjeux_Previews: PreviewProvider {
    static var previews: some View {
        nouveauxjeux()
    }
}
