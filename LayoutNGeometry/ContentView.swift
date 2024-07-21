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
        .frame(width: 400, height: 100)
        .background(.orange)
        
        VStack(alignment: .leading) {
            ForEach(0..<10) { number in
                Text("Number: \(number)")
                    .alignmentGuide(.leading) { _ in
                        Double(number) * -10
                    }
            }
        }
        
        Spacer()
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@parpods")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[.top]
                    }
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("Name:")
                
                Text("PARTH ANTALA")
                    .alignmentGuide(.midAccountAndName) { d in
                        d[.top]
                    }
                    .font(.largeTitle)
                
            }
        }
    }
}

#Preview {
    ContentView()
}
