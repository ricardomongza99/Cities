//
//  ShorthandIntegerStyle.swift
//  Cities
//
//  Created by Ricardo Montemayor on 17/08/22.
//

import SwiftUI

struct ShorthandIntegerStyle: FormatStyle {
    typealias FormatInput = Int
    typealias FormatOutput = String
    
    func format(_ value: FormatInput) -> FormatOutput {
        let num = Double(value)
        
        switch num {
        case 1_000_000...:
            let formatted = num / 1_000_000
            return "\(formatted.reduceScale(to: 1))m"
        case 1_000...:
            let formatted = num / 1_000
            return "\(formatted.reduceScale(to: 1))k"
        default:
            return "\(value)"
        }
    }
}

extension FormatStyle where Self == ShorthandIntegerStyle {
    static var shorthand: ShorthandIntegerStyle { .init() }
}
