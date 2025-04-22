//
//  InsetFactView.swift
//  Africa
//
//  Created by Abhishek on 22/04/25.
//

import SwiftUI

struct InsetFactView: View {
    let animal: Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            } //: TAB
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        } //: BOX
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    InsetFactView(animal: animals[0])
        .padding()
}
