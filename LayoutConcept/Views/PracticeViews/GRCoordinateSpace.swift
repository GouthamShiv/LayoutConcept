//
//  GRCoordinateSpace.swift
//  LayoutConcept
//
//  Created by Goutham on 19/06/22.
//

import SwiftUI

struct GRCoordinateSpace: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("OUTER")
                .frame(height: 30)
                .background(Color.black)
            VStack(spacing: 0) {
                Text("MID")
                    .frame(height: 30)
                    .background(Color.black)
                VStack(spacing: 0) {
                    Text("INNER TOP")
                        .frame(height: 30)
                        .background(Color.black)
                    
                    HStack(spacing: 0) {
                        Text("L")
                            .frame(width: 20)
                            .background(Color.black)
                        GeometryReader { geo in
                            VStack {
                                // LOCAL
                                HStack {
                                    Text("In Local: (\(Int(geo.frame(in: .local).minX)), \(Int(geo.frame(in: .local).minY)))")
                                    Spacer()
                                }
                                // GLOBAL
                                HStack {
                                    Text("In Global: (\(Int(geo.frame(in: .global).minX)), \(Int(geo.frame(in: .global).minY)))")
                                    Spacer()
                                }
                                
                                // CUSTOM
                                HStack {
                                    Text("In Custom (Blue Coordinate Space): (\(Int(geo.frame(in: .named("blue")).minX)), \(Int(geo.frame(in: .named("blue")).minY)))")
                                    Spacer()
                                }
                                
                                Spacer()
                                HStack {
                                    Text("Size: \(Int(geo.size.width)) x \(Int(geo.size.height))")
                                }
                                Spacer()
                                HStack {
                                    Text("(\(Int(geo.frame(in: .local).minX)), \(Int(geo.frame(in: .local).maxY)))")
                                    Spacer()
                                    Text("(\(Int(geo.frame(in: .local).maxX)), \(Int(geo.frame(in: .local).maxY)))")
                                }
                            }
                        }
                        .background(Color.gray)
                        Text("R")
                            .frame(width: 20)
                            .background(Color.black)
                    }
                    Text("INNER BOTTOM")
                        .frame(height: 30)
                        .background(Color.black)
                }
                .background(Color.green)
            }
            .background(Color.blue)
            .coordinateSpace(name: "blue")
        }
        .background(Color.yellow)
        .foregroundColor(Color.white)
    }
}

struct GRCoordinateSpace_Previews: PreviewProvider {
    static var previews: some View {
        GRCoordinateSpace()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
