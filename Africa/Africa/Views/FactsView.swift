//
//  FactsView.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import SwiftUI

struct FactsView: View {
    
    let facts: [String]
    var body: some View {
        GroupBox{
            TabView {
                ForEach(facts, id: \.self ) {fact in
                    Text(fact)
                        .multilineTextAlignment(.center)
                    
                }
            }
            .tabViewStyle(PageTabViewStyle())
        }
        .frame(height: 150)
        .padding(.horizontal)
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(facts: ["bkbkbk bkbkbkb", "bkbkbk bkbkbk bkb"])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
