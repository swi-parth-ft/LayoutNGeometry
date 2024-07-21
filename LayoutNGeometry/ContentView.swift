//
//  ContentView.swift
//  LayoutNGeometry
//
//  Created by Parth Antala on 2024-07-21.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    var body: some View {
        GeometryReader { fullView in
            ScrollView {
                ForEach(0..<50) { number in
                    GeometryReader { proxy in
                        Text("Number: \(number)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[number % 7])
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(height: 40)
                }
            }
        }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<20) { number in
                        GeometryReader { proxy in
                                Text("Number: \(number)")
                                .font(.largeTitle)
                                .padding()
                                .background(.orange)
                                .rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                                .frame(width: 200, height: 200)
                        }
                        .frame(width: 200, height: 200)
                    }
                }
            }
        
    }
}

#Preview {
    ContentView()
}
