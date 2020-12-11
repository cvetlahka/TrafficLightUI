//
//  Cirkle.swift
//  TrafficLightUI
//
//  Created by Светлана Сафонова on 10.12.2020.
//

import SwiftUI

struct Cirkle: View {

    let color: UIColor
    var body: some View {
        Color(color)
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .shadow(radius: 10)
       
    }
}

struct Cirkle_Previews: PreviewProvider {
    static var previews: some View {
        Cirkle(color: .red)
    }
}
