//
//  ContentView.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import SwiftUI

struct ContentView: View {
    
    let animal: [Animal] = Bundle.main.decode("animals.json")!
    
    var body: some View {
        NavigationView {
            VStack {
                AnimalHeaderView()
                List(animal) { animal in
                    NavigationLink( destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }
                }
                .listStyle(.plain)
        
            }
            .navigationBarTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            //.padding()
    }
}
