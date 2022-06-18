//
//  AddNameView.swift
//  LayoutConcept
//
//  Created by Goutham on 18/06/22.
//

import SwiftUI

struct AddNameView: View {
    //    @ObservedObject var contentVM: ContentViewModel
    @EnvironmentObject var contentVM: ContentViewModel
    @Binding var showForm: Bool
    @State private var name = ""
    
    var body: some View {
        TextField("Enter new name",
                  text: $name,
                  //                  onEditingChanged: { _ in},
                  onCommit: {
            contentVM.save(name: name)
            showForm.toggle()
        })
        .padding()
    }
}

struct AddNameView_Previews: PreviewProvider {
    static var previews: some View {
        //        AddNameView(contentVM: ContentViewModel(), showForm: .constant(true))
        AddNameView(showForm: .constant(true))
            .environmentObject(ContentViewModel())
    }
}
