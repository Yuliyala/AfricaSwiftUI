//
//  SectionTitleView.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import SwiftUI

struct SectionTitleView: View {
    
    let image: String
    let title: String
    
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: image)
                
                Text(title)
                Spacer()
                   
            }
            .font(.title2)
            .fontWeight(.semibold)
            
        }
        .padding(.horizontal)
    }
}

struct SectionTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitleView(image: "heart", title: "Description")
    }
}
