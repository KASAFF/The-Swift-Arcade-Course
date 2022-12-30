//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Aleksey Kosov on 31.12.2022.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
