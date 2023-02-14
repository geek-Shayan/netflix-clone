//
//  Extensions.swift
//  netflix clone
//
//  Created by MD. SHAYANUL HAQ SADI on 26/1/23.
//

import Foundation



extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
     }
}
