//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack {
                    Image(animal.id)
                        .resizable()
                        .scaledToFit()
                    
                    Text(animal.name)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    SectionTitleView(image: "magnifyingglass", title: "Facts")
                    FactsView(facts: animal.fact)
                    SectionTitleView(image: "globe", title: "Description")
                    
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .font(.callout)
                        .padding(.horizontal, 8)
                    
                    AnimalLinkView(animal: animal)
                        .padding()
                }
            }
        }
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")!
    
    static var previews: some View {
        AnimalDetailView(animal: animal[0])
    }
}
