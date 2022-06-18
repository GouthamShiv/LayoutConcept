//
//  ContentViewModel.swift
//  LayoutConcept
//
//  Created by Goutham on 18/06/22.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var names = ["John", "Wick"]
    
    func save(name: String = "") {
        names.append(name)
    }
}
