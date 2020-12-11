//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by Светлана Сафонова on 10.12.2020.
//

import SwiftUI

enum TrafficLite {
    case red, yellow, green
}
struct ContentView: View {
  @State var redCircle = false
    @State var yellowCircle = true
    @State var greenCircle = true

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                 
            
                
                Color(redCircle ? .red : .black)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
//                    .opacity(0.3)
                    .padding()
                Color(yellowCircle ? .yellow : .black)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
//                    .opacity(0.3)
                    .padding()
              
                Color(greenCircle ? .green : .black)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
//                    .opacity(0.3)
                    .padding()
                Spacer()
                
                Button(action: {
                    self.redCircle.toggle()
                    self.yellowCircle.toggle()
                    self.greenCircle.toggle()
                    
                }, label: {
                    Text("Start")
                })
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.title)
        }
        
       
       
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
