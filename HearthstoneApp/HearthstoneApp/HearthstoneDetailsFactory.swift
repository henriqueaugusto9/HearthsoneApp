//
//  HearthstoneDetailsFactory.swift
//  HearthstoneApp
//
//  Created by henrique augusto on 13/08/23.
//

import Foundation

enum HearthstoneDetailsFactory {
    static func build() -> HearthstoneDetailsViewController {
        let controller = HearthstoneDetailsViewController()
        let presenter = HearthstoneDetailsPresenter(view: controller)
        let interactor = HearthstoneDetailsInteractor(presenter: presenter)
        
        controller.interactor = interactor
        return controller
    }
}
