//
//  nouveauxjeux.swift
//  ludik
//
//  Created by Apprenant 165 on 07/06/2024.
//

import SwiftUI

struct nouveauxjeux: View {
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
                       .font(.largeTitle)
                       .bold()
                   
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
               self.score += 1
           } else {
               self.score -= 1
           }
       }
       
       
       func generateAnswers(){
           firstNumber = Int.random(in: 0...(difficulté/2))
           secondNumber = Int.random(in: 0...(difficulté/2))
           var answerList = [Int]()
           
           correctAnswer = firstNumber + secondNumber
           
           for i in 0...2 {
               answerList.append(Int.random(in: 0...difficulté))
           }
           
           answerList.append(correctAnswer)
           
           choiceArray = answerList.shuffled()
       }
   }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        nouveauxjeux()
    }
}
