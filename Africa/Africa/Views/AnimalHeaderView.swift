//
//  AnimalHeaderView.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import SwiftUI

struct AnimalHeaderView: View {
    
    let covers: [Cover] = Bundle.main.decode("covers.json")!
    
    var body: some View {
        TabView {
            ForEach(covers) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
            .frame(height: 300)
    }
}

struct AnimalHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalHeaderView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
