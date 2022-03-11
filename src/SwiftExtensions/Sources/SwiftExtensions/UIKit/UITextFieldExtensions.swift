//
//  UITextFieldExtensions.swift
//  
//
//  Created by David Ferreira on 11/03/2022.
//


#if canImport(UIKit) && !os(watchOS)

import UIKit



// MARK: - Methods

public extension UITextField {
    
    /// Returns number of lines in UITextField.
    func getTotalNumberLines() -> Int {
            
        if let font = self.font {
            return  Int(self.contentSize.height / font.lineHeight)
        }
        
        return 0
    }
      
    
    /// Returns number of line of the current word. 
    func getCurrentLineNumber() -> Int {
        if let selectedRange = self.selectedTextRange {
            
            let numberLines = getTotalNumberLines()
            
            if (numberLines == 0) {
                return 0
            }
            
            let numberWordsPerLine = self.text.count / numberLines
                        
            let cursorPosition = self.offset(from: self.beginningOfDocument, to: selectedRange.start)
            
            if (numberWordsPerLine == 0) {
                return 0
            }
            
            let currentLine = Int(cursorPosition / numberWordsPerLine)
            
            // Check for blank lines and count them two.
            let stringBehindCurrentWord = self.text.prefix(cursorPosition)
            let blankLines = stringBehindCurrentWord.components(separatedBy: "\n")
            let numberBlankLines = (blankLines.count - 1) / 2
            
            return currentLine + numberBlankLines
        }
        
        return 0
    }

    
}


#endif
