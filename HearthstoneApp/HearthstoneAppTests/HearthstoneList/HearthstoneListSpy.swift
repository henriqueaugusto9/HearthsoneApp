//
//  HearthstoneListSpy.swift
//  HearthstoneAppTests
//
//  Created by Henrique Augusto on 14/08/23.
//

import Foundation

@testable import HearthstoneApp

final class HearthstoneListSpy: HearthstoneViewControllerProtocol {
    private(set) var items: [HearthstoneCellProtocol] = []
    private(set) var data: AshesOfOutlandData?
    private(set) var callCountToGoToDetailsScreen = 0
    
    
    func setupItems(cells: [HearthstoneCellProtocol]) {
        self.items = cells
    }
    
    func showDetails(data: AshesOfOutlandData) {
        callCountToGoToDetailsScreen += 1
        self.data = data
    }
}
