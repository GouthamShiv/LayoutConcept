//
//  GeometryReaderDemo.swift
//  LayoutConcept
//
//  Created by Goutham on 19/06/22.
//

import SwiftUI

struct GeometryReaderDemo: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Top Text")
                .frame(height: 50)
                .background(Color.orange)
  
            GeometryReader { geo in
                Text("Geo Size: \(Int(geo.size.width)) x \(Int(geo.size.height))")
            }
            .background(Color.indigo)
            
            HStack {
                Text("Left")
                
                GeometryReader { geo in
                    Text("Geo Size: \(Int(geo.size.width)) x \(Int(geo.size.height))")
                }
                .background(Color.gray)
                
                Text("Right")
            }
            .frame(height: 100)
        }
        .frame(width: 300, height: 400, alignment: .center)
        .background(.mint)
    }
}

struct GeometryReader_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderDemo()
    }
}
