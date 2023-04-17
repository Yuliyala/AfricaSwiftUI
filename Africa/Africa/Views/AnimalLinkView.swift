//
//  AnimalLinkView.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import SwiftUI

struct AnimalLinkView: View {
    
    let animal: Animal
    var body: some View {
        GroupBox {
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link)!)
                }
                .foregroundColor(.orange)
            }
        }
    }
}

struct AnimalLinkView_Previews: PreviewProvider {
    
    static let animal: [Animal] = Bundle.main.decode("animals.json")!
    
    static var previews: some View {
        AnimalLinkView(animal: animal[0])
    }
}
