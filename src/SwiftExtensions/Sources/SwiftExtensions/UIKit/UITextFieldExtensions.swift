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
      
    
    /// Returns position of cursor in terms of the number of line.
    func getCursorLineNumberPosition() -> Int {
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
            
            // Check for blank lines and count them too.
            let stringBehindCurrentWord = self.text.prefix(cursorPosition)
            let blankLines = stringBehindCurrentWord.components(separatedBy: "\n")
            let numberBlankLines = (blankLines.count - 1) / 2
            
            return currentLine + numberBlankLines
        }
        
        return 0
    }

    
    /// Returns position of cursor in terms of the number of characters in UITextField.
    func getCursorPosition() -> NSInteger? {
        if let selectedRange : UITextRange = self.selectedTextRange? {
            let textPosition : UITextPosition = selectedRange.start
            return self.offset(from: self.beginningOfDocument, to: textPosition)
        }
        return nil
    }

    
    /// Returns word currently being written.
    /// The returned word will be the set of characters since last newline or blankspace.
    func getCurrentWord() -> String? {
        let cursorOffset : NSInteger = self.getCursorPosition()
        let text : NSString = self.text as NSString
        let substring : NSString = text.substring(to: cursorOffset) as NSString
        var lastWord = substring.components(separatedBy: " ").last
        lastWord = lastWord?.components(separatedBy: "\n").last
        return lastWord
    }

}


#endif
