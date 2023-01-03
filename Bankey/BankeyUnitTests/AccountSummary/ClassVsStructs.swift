//
//  ClassVsStructs.swift
//  BankeyUnitTests
//
//  Created by Aleksey Kosov on 03.01.2023.
//

import Foundation

import XCTest


class Student {
    let name: String
    let preferences: [String]
    var match: String? = nil

    init(name: String, preferences: [String], match: String? = nil, matched: Bool = false) {
        self.name = name
        self.preferences = preferences
        self.match = match
    }
}

class Course {
    let name: String
    var capacity: Int
    var hasCapacity: Bool {
        return capacity != 0
    }

    init(name: String, capacity: Int) {
        self.name = name
        self.capacity = capacity
    }
}

class Matcher {
    var students: [Student]
    var courses: [Course]

    init(students: [Student], courses: [Course]) {
        self.students = students
        self.courses = courses
    }

    func match() {
        for student in students {
            for pref in student.preferences {
                let course = courses.first { $0.name == pref }
                // 🕹 reference - change made here happens everywhere
                if course!.hasCapacity {
                    student.match = course?.name
                    course?.capacity -= 1
                    break
                }
            }
        }
    }
}

class MatcherTest: XCTestCase {
    var matcher: Matcher!

    override func setUp() {
        super.setUp()
    }

    func testOneToOne() throws {
        let peter = Student(name: "Peter", preferences: ["A", "B", "C"])
        let paul = Student(name: "Paul", preferences: ["A", "B", "C"])
        let mary = Student(name: "Mary", preferences: ["A", "B", "C"])

        let students = [peter, paul, mary]

        let courseA = Course(name: "A", capacity: 1)
        let courseB = Course(name: "B", capacity: 1)
        let courseC = Course(name: "C", capacity: 1)

        let courses = [courseA, courseB, courseC]

        let matcher = Matcher(students: students, courses: courses)
        matcher.match()

        // No return value necessary - can test on original object
        XCTAssertEqual(students[0].match, "A")
        XCTAssertEqual(students[1].match, "B")
        XCTAssertEqual(students[2].match, "C")
    }
}

