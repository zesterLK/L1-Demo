//
//  ContentView.swift
//  L1 Demo
//
//  Created by Lalit Krishna on 04/07/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
       
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
               
                
                Image("niagarafalls")
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                
                HStack{
                    Text("Niagara Falls")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    VStack{
                        
                        HStack{
                            Image(systemName: "star")
                            Image(systemName: "star")
                            Image(systemName: "star")
                            Image(systemName: "star")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        Text("(Reviews 361)")
                    }.foregroundColor(Color.orange).font(.caption)
                }
                
                Text("Come Visit Niagara falls")
                    .font(/*@START_MENU_TOKEN@*/.footnote/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars")
                }
                .foregroundColor(Color.gray)
                .font(.caption)
                
            }
        .padding()
        .background(Rectangle()
            .foregroundColor(.white)
            .cornerRadius(15)
            .shadow(radius: 15))
        .padding()
        
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
