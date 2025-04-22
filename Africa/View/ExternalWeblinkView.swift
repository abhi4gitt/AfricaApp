//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Abhishek on 22/04/25.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal: Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                    
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            } //: HSTACK
        } //: BOX
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    ExternalWeblinkView(animal: animals[0])
        .padding()
}
