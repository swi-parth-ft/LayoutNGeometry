//
//  ContentView.swift
//  LayoutNGeometry
//
//  Created by Parth Antala on 2024-07-21.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    @State private var opac = 1.0
    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
                        
                        let minY = proxy.frame(in: .global).minY
                        let opacity = minY < 200 ? minY / 200 : 1.0
                        
                        Text("Row #\(index) \(minY)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[index % 7])
                            .opacity(opacity)
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                            
                    }
                    .frame(height: 40)
                }
            }
        }
    }
    
    
}

#Preview {
    ContentView()
}
