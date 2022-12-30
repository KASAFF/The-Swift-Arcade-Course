//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Aleksey Kosov on 01.01.2023.
//

import Foundation
import XCTest

@testable import Bankey

class CurrencyFormatterTests: XCTestCase {
    var formatter: CurrencyFormatter!

    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }

    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }

    func testDollarsFormatted() throws {
        let result2 = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result2, "929,466.23 $")
    }
    func testZeroDollarsFormatted() throws {
        let results3 = formatter.dollarsFormatted(0)
        XCTAssertEqual(results3, "0.00 $")
    }

    func testDollarsFormattedWithCurrencySymbol() throws {
        let locale = Locale.current
        let currencySymbol = locale.currencySymbol!

        let result = formatter.dollarsFormatted(929466.23)
        print(currencySymbol)
        XCTAssertEqual(result, "929,466.23 \(currencySymbol)")
    }

}
