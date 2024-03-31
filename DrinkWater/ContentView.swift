//
//  ContentView.swift
//  DrinkWater
//
//  Created by 宋成志 on 2024/3/30.
//

import SwiftUI

struct ContentView: View {
    @State var isWatered = false
    
    var body: some View {
        
        VStack {
            ZStack{
                Image("background")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .opacity(0.6)

                
                Image(systemName: isWatered ? "crown.fill":"eyes")
                    .foregroundColor(isWatered ? /*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/:.black)
                    .font(.system(size: 200))
                    
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .frame(minHeight: 650)
            
            Divider()
            
            Toggle(isOn: $isWatered) {
                Label("喝水了吗", systemImage: "drop.fill")
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
        }
        .padding()
        
    }
    
}





#Preview {
    ContentView()
}
