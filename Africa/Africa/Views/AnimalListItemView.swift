//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal: Animal
    var body: some View {
        HStack(spacing: 14) {
            Image(animal.id)
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(animal.description)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            
            Spacer()
        }
        .cornerRadius(12)
        .frame(height: 90)
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animal: [Animal] = Bundle.main.decode("animals.json")!
    
    static var previews: some View {
        AnimalListItemView(animal: animal[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
