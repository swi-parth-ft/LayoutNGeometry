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
                    let i = fullView.size.height
                        Text("Number: \(number)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[number % 7])
                            .visualEffect { content, proxy in
                                content.rotation3DEffect(.degrees(proxy.frame(in: .global).minY - i / 2) / 5,
                                                      axis: (x: 0, y: 1, z: 0))
                            }
                            
                
                }
            }
        }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<20) { number in
                                Text("Number: \(number)")
                                .font(.largeTitle)
                                .padding()
                                .background(.orange)
                                .frame(width: 200, height: 200)
                                .visualEffect { content, proxy in
                                    content.rotation3DEffect(.degrees(-proxy.frame(in: .global).minX) / 8, axis: (x: 0, y: 1, z: 0))
                                }
                                
                                
                        
                   
                    }
                }
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
        
    }
}

#Preview {
    ContentView()
}
