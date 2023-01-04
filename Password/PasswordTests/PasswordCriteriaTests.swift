//
//  PasswordCriteriaTests.swift
//  PasswordTests
//
//  Created by Aleksey Kosov on 04.01.2023.
//


import XCTest

@testable import Password

class PasswordLengthCriteriaTests: XCTestCase {

    // Boundary conditions 8-32

    func testShort() throws {
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("1234567"))
    }

    func testLong() throws {
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet(String(repeating: "a", count: 33)))
    }

    func testValidShort() throws {
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("12345678"))
    }

    func testValidLong() throws {
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet(String(repeating: "a", count: 32)))
    }
}

class PaswordOtherCriteriaTests: XCTestCase {
    func testSpaceMet() throws {
        XCTAssertTrue(PasswordCriteria.noSpaceCriteriaMet("abc"))
    }

    func testSpaceNotMet() throws {
        XCTAssertFalse(PasswordCriteria.noSpaceCriteriaMet("a bc"))
    }

    func testLengthAndNoSpaceMet() throws {
        XCTAssertTrue(PasswordCriteria.lengthAndNoSpaceMet("12345678"))
    }

    func testLengthAndNoSpaceNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lengthAndNoSpaceMet("1234 5678"))
    }

    func testUppercaseMet() throws {
        XCTAssertTrue(PasswordCriteria.uppercaseMet("Aa"))
    }

    func testUppercaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.uppercaseMet("aa"))
    }

    func testLowercaseMet() throws {
        XCTAssertTrue(PasswordCriteria.lowercaseMet("aa"))
    }

    func testLowercaseNotMet() throws {
        XCTAssertFalse(PasswordCriteria.lowercaseMet("AA"))
    }

    func testdigitMet() throws {
        XCTAssertTrue(PasswordCriteria.digitMet("123"))
    }

    func testdigitNotMet() throws {
        XCTAssertFalse(PasswordCriteria.digitMet("abc"))
    }

    func testSpecialCharacterMet() throws {
        XCTAssertTrue(PasswordCriteria.specialCharacterMet("$@"))
    }

    func testSpecialCharacterNotMet() throws {
        XCTAssertFalse(PasswordCriteria.specialCharacterMet("abc"))
    }
}

