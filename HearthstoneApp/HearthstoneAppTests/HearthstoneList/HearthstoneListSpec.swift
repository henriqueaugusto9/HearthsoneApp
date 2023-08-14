//
//  HearthstoneListSpec.swift
//  HearthstoneAppTests
//
//  Created by Henrique Augusto on 14/08/23.
//

import Foundation
import XCTest

@testable import HearthstoneApp

final class HearthstoneListSpec: XCTestCase {
    var spy: HearthstoneListSpy?
    
    override func setUp() {
        spy = HearthstoneListSpy()
    }
    
    func test_WhenGetList_ThenSuccess_ShouldReturnExpectedValues() throws {
        let unwrappedSpy = try XCTUnwrap(spy)
        let sut = HearthstoneListTestFactory.build(spy: unwrappedSpy)
        
        sut.getItems()
        
        XCTAssertEqual(spy?.items[0].name, "Sargeras")
        XCTAssertEqual(spy?.items[0].playerClass, "Neutral")
        XCTAssertEqual(spy?.items[1].name, "Aldor Attendant")
        XCTAssertEqual(spy?.items[1].playerClass, "Paladin")
        XCTAssertEqual(spy?.items[2].name, "Ashes of Al'ar")
        XCTAssertEqual(spy?.items[2].playerClass, "Neutral")
        XCTAssertEqual(spy?.items.count, 190)
    }
    
    func test_WhenDidTapToGoToDetails_ThenSuccess_ShouldSendCorrectItemSelected() throws {
        let unwrappedSpy = try XCTUnwrap(spy)
        let sut = HearthstoneListTestFactory.build(spy: unwrappedSpy)
        
        sut.getItems()
        sut.goToDetails(index: 2)
        
        XCTAssertEqual(spy?.callCountToGoToDetailsScreen, 1)
        XCTAssertEqual(spy?.data?.name, "Ashes of Al'ar")
        XCTAssertEqual(spy?.data?.playerClass, "Neutral")
    }
    
    override func tearDown() {
        spy = nil
    }
}
