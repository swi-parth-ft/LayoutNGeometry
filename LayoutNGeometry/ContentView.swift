//
//  ContentView.swift
//  LayoutNGeometry
//
//  Created by Parth Antala on 2024-07-21.
//

import SwiftUI
extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            d[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct ContentView: View {
    var body: some View {
        HStack {
            Text("Hey, SwiftUI")
            .font(.largeTitle)
                
            GeometryReader { proxy in
                Circle()
                    .fill(.orange)
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
        }
            
            
        
        
    }
}

#Preview {
    ContentView()
}
