//
//  ExampleSet1.swift
//  LayoutConcept
//
//  Created by Goutham on 18/06/22.
//

import SwiftUI

struct ExampleSet1: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 50.0) {
            Text("Hello, world!")
            .font(.title)
            
            Text("Hello world again!")
                .font(.callout)
                .foregroundColor(.red)
            
            HStack(alignment: .center, spacing: 50.0) {
                Text("Horizontal 1")
                Text("Horizontal 2")
            }
            
            Button(
                action: {print ("Button 1 is clicked")},
                label: {Text("Button 1")})
            Button(
                action: {print ("Button 2 is clicked")},
                label: {
                    Image(systemName: "pencil")
                    Text("Button 2")
                })
            .padding(EdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20))
            .background(RoundedRectangle(cornerRadius: .infinity)
                .foregroundColor(.accentColor))
            .foregroundColor(.white)
            
            ZStack {
                
            }
        }
    }
}

struct ExampleSet1_Previews: PreviewProvider {
    static var previews: some View {
        ExampleSet1()
    }
}
