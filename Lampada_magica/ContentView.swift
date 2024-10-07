//
//  ContentView.swift
//  Lampada_magica
//
//  Created by Eliardo Venancio on 27/09/24.
//

import SwiftUI

struct ContentView: View {
    @State var lampadaLigada: Bool = false
    @State var lampadaPotencia: Double = 1.0
    
    var body: some View {
        VStack {
            Text("Lampada Magica")
                .font(.largeTitle)
                .padding()
            
            Image(systemName: "lightbulb")
                .font(.system(size: 300))
            
            Spacer()
            
            HStack {
                Text("Lampada: ")
                Toggle(lampadaLigada ? "Desligar" : "Ligar", isOn: $lampadaLigada)
            }
            
            HStack {
                Text("Potencia: ")
                Slider(value: lampadaLigada ? $lampadaPotencia : .constant(0))
                Text("\(lampadaLigada ? lampadaPotencia * 100 : 0.0, specifier: "%.0f")%")
            }
            
        }
        .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(lampadaLigada ? .yellow.opacity(lampadaPotencia) : .white)
    }
}

#Preview {
    ContentView()
}
