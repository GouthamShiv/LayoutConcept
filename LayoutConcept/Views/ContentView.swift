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
                    Label("View Examples", systemImage: "doc.viewfinder.fill")
                    Text("View Examples")
                }
            
            ExampleSet2()
                .tabItem{
                    Label("Pickers Examples", systemImage: "cursorarrow")
                    Text("Pickers Examples")
                }
            
            ObservableExample()
                .tabItem{
                    Label("Observable Examples", systemImage: "link")
                    Text("Observable Examples")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
