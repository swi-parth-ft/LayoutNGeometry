//
//  ContentView.swift
//  LayoutNGeometry
//
//  Created by Parth Antala on 2024-07-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("Live")
                .font(.caption)
            
            Text("long")
            
            Text("and")
                .font(.title)
            
            Text("prosper")
                .font(.largeTitle)
        }
        
        VStack(alignment: .leading) {
            Text("Hello, Swift!")
                .alignmentGuide(.leading) { d in
                    d[.trailing]
                }
            Text("This is amazing language to learn")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.orange)
        
        VStack(alignment: .leading) {
            ForEach(0..<10) { number in
                Text("Number: \(number)")
                    .alignmentGuide(.leading) { _ in
                        Double(number) * -10
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
