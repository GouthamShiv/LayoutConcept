//
//  ContentView.swift
//  LayoutConcept
//
//  Created by Goutham on 18/06/22.
//

import SwiftUI

struct ContentView: View {
    
    //    @State private var tab = 0
    
    var body: some View {
        
        TabView {
            ExampleSet1()
                .tabItem{
                    Label("View", systemImage: "doc.viewfinder.fill")
                    Text("View")
                }
            
            ExampleSet2()
                .tabItem{
                    Label("Pickers", systemImage: "cursorarrow")
                    Text("Pickers")
                }
            
            ObservableExample()
                .tabItem{
                    Label("Observable", systemImage: "link")
                    Text("Observable")
                }
            
            GeometryReaderDemo()
                .tabItem{
                    Label("GeometryReader", systemImage: "square.dashed")
                    Text("GeometryReader")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
