//
//  ObservableExample.swift
//  LayoutConcept
//
//  Created by Goutham on 18/06/22.
//

import SwiftUI

struct ObservableExample: View {
    //    @ObservedObject var contentVM = ContentViewModel()
    @EnvironmentObject var contentVM: ContentViewModel
    @State private var showForm = false
    
    var body: some View {
        VStack {
            List(contentVM.names, id: \.self) { name in
                Text(name)
            }
            .padding(.top, 60)
            
            Button(action: {
                showForm.toggle()
            }, label: {
                Label("Add new name", systemImage: "plus.circle")
            })
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(Color.white)
        }
        .frame(maxHeight: 400)
        .sheet(isPresented: $showForm) {
            //            AddNameView(contentVM: contentVM, showForm: $showForm)
            AddNameView(showForm: $showForm)
        }
    }
}

struct ObservableExample_Previews: PreviewProvider {
    static var previews: some View {
        ObservableExample()
    }
}
