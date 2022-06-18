//
//  ExampleSet2.swift
//  LayoutConcept
//
//  Created by Goutham on 18/06/22.
//

import SwiftUI

struct ExampleSet2: View {
    
    private let languages = ["Swift", "Java", "C++", "Objective-C"]
    @State private var languageSelection = 0
    @State private var dateSelected = Date()
    @State private var colorSelected = Color.black
    
    var body: some View {
        VStack {
            Picker(
                selection: $languageSelection,
                label: Text("Select Language"),
                content: {
                    ForEach(0..<languages.count, id: \.self) { idx in
                        Text(languages[idx]).tag(idx)
                    }
                })
            .pickerStyle(.wheel)
            
            Picker(
                selection: $languageSelection,
                label: Text("Select Language"),
                content: {
                    ForEach(0..<languages.count, id: \.self) { idx in
                        Text(languages[idx]).tag(idx)
                    }
                })
            .pickerStyle(.menu)
            
            Picker(
                selection: $languageSelection,
                label: Text("Select Language"),
                content: {
                    ForEach(0..<languages.count, id: \.self) { idx in
                        Text(languages[idx]).tag(idx)
                    }
                })
            .pickerStyle(.segmented)
            .padding(10)
            
            DatePicker("Select Date", selection: $dateSelected)
            
            ColorPicker("Select Color", selection: $colorSelected)
        }
    }
}

struct ExampleSet2_Previews: PreviewProvider {
    static var previews: some View {
        ExampleSet2()
    }
}
