//
//  candyCrunchMenu.swift
//  ludik
//
//  Created by Apprenant 178 on 05/06/2024.
//

import SwiftUI

extension Color {
    static let bubbleGumPink = Color(red: 233/255, green: 179/255, blue: 180/255)
    static let backBlue = Color(red: 167/255, green: 202/255, blue: 200/255)
    static let backBlue2 = Color(red: 142/255, green: 192/255, blue: 215/255)
    static let bubbleGumYellow = Color(red: 253/255, green: 252/255, blue: 198/255)
    static let buttonBlue = Color(red: 111/255, green: 157/255, blue: 181/255)
}

struct candyCrunchMenu: View {
    var body: some View {
        
        
        
        
        ZStack{
                LinearGradient(colors: [.backBlue, .backBlue2], startPoint: .top, endPoint: .topTrailing)
                    .ignoresSafeArea()
                
                
                
            
            
        VStack{
            ZStack{
                Image("ImageJeuSoso")
                            .resizable()
                            .frame(width: 400.0, height: 250.0)
                            .ignoresSafeArea()
                Text("CANDY CRUNCH")
                        .font(.custom("Ranchers-Regular", size: 60))
                        .foregroundStyle(
                                LinearGradient(gradient: Gradient(colors: [.bubbleGumPink, .bubbleGumYellow]), startPoint: .topTrailing, endPoint: .bottom)) 
                        
                        
                    }
        Spacer()
                
                ZStack{
                    RoundedRectangle(cornerSize: CGSize(width: 80, height: 30))
                        .fill(Color.buttonBlue)
                        .frame(width: 300, height: 120)
                
                    Text("COMMENCER ")
                        .font(.custom("Ranchers-Regular", size: 40))
                        .foregroundStyle(
                                LinearGradient(gradient: Gradient(colors: [.bubbleGumPink, .bubbleGumYellow]), startPoint: .topTrailing, endPoint: .bottom))
                    
                        
                        
                }
                    
                    
                    Spacer()
                    Circle()
                        .frame(width: 90)
                        .foregroundStyle(
                                LinearGradient(gradient: Gradient(colors: [.bubbleGumPink, .backBlue2]), startPoint: .topTrailing, endPoint: .bottom))
                    
                    

                    
                    
                    
                    
            }
        }
    }
        
        
        
        
        
        
        
        
        
        
        
    
}
    


#Preview {
    candyCrunchMenu()
}
