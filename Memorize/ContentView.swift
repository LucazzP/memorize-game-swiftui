//
//  ContentView.swift
//  Memorize
//
//  Created by Lucas Polazzo on 5/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: index % 2 == 0)
            }
        }
        .padding()
    }
}


struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
        .foregroundColor(.orange)
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
