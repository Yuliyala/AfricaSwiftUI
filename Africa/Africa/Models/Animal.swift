//
//  Animal.swift
//  Africa
//
//  Created by Yuliya Lapenak on 4/17/23.
//

import Foundation

struct Animal : Decodable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description : String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}

struct Cover : Decodable, Identifiable {
    let id: Int
    let name: String
}

extension Bundle {
    func decode<T: Decodable> (_ file: String) -> T? {
        guard let url = self.url(forResource: file, withExtension: nil),
              let data = try? Data(contentsOf: url),
              let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
            return nil
        }
        return decodedData
    }
}
