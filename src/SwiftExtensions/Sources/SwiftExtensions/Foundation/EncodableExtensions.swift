//
//  EncodableExtensions.swift
//  
//
//  Created by David Ferreira on 18/03/2022.
//


#if canImport(Foundation)

import Foundation


extension Encodable {
    
    /// Converts to and returns a dictionary.
    func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
          throw NSError()
        }
        return dictionary
    }
    
}


#endif


import Foundation
