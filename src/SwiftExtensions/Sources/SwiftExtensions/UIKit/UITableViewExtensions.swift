//
//  File.swift
//  
//
//  Created by David Ferreira on 28/04/2022.
//

#if canImport(UIKit) && !os(watchOS)

import UIKit


public extension UITableView {
    
    
    
    /// Reloads table view but mantaining current offset.
    func reloadDataWithoutScroll() -> Int {
            
        let offset = contentOffset
        
        layoutIfNeeded()
        
        setContentOffset(offset, animated: false)
        
        reloadData()
        
    }
    
    
}


#endif
