//
//  String_Format.swift
//  String.Format
//
//  Created by Jeferson Nazario on 24/04/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import Foundation

extension String {
    func format(with format: String) -> String {
        let string: String = self
        let filter: String = format
        
        // Validate if the number of # on filter equals to string.count
        let filterCharacters = filter.filter { return $0 == "#" }
        print("Quantidade de # do filtro")
        print(filterCharacters.count)
        print("Quantidade de caracteres da string")
        print(string)
        
        var onOriginal: Int = 0
        var onFilter: Int = 0
        var onOutput: Int = 0
        var outputString: String = ""
        var done = false
        while onFilter < filter.count && !done {
            let filterIndex = filter.index(filter.startIndex, offsetBy: onFilter)
            let filterEndIndex = filter.index(filter.startIndex, offsetBy: onFilter+1)
            let filterRange = filterIndex..<filterEndIndex
            let filterChar = filter.substring(with: filterRange)
            let stringIndex = string.index(string.startIndex, offsetBy: onOriginal)
            let endIndex = string.index(string.startIndex, offsetBy: onOriginal+1)
            let range = stringIndex..<endIndex
            let originalChar = onOriginal >= string.count ? "\0" : string.substring(with: range)
            switch filterChar {
            case "#":
                if originalChar == "\0" {
                    done = true
                }
                outputString.append(originalChar)
                onOriginal += 1
                onFilter += 1
                onOutput += 1
            default:
                outputString.append(filterChar)
                onOutput += 1
                onFilter += 1
                if originalChar == filterChar {
                    onOriginal += 1
                }
            }
        }
        outputString.append("\0")
        
        guard let formattedString = String(utf8String: outputString) else { return ""}
        return formattedString
    }
}
