//
//  DateExtensions.swift
//  
//
//  Created by David Ferreira on 15/03/2022.
//

#if canImport(Foundation) 

import Foundation


extension Date {
    
    /// Converts to string with specified format.
    func convertToStringWithFormat(dateFormat: String) -> String {
        let formatter = DateFormatter()
        formatter.locale = NSLocale.current
        formatter.dateFormat = dateFormat
        return formatter.string(from: self)
    }
    
}


#endif
