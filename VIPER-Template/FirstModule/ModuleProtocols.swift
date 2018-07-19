//
//  ModuleProtocols.swift
//  VIPER-Template
//
//  Created by Stanly Shiyanovskiy on 19.07.2018.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import UIKit

protocol ModuleViewProtocol: class {
    func setLabelTitle(with title: String)
    func setBackground(with color: UIColor)
}

protocol ModulePresenterProtocol: class {
    var router: ModuleRouterProtocol! { get set }
    func configureView()
    func closeButtonClicked()
    func changeColorButtonClicked()
    func updateBackgroundColor(with color: UIColor)
}

protocol ModuleInteractorProtocol: class {
    var labelTitle: String { get }
    func getRandomColor()
}

protocol ModuleRouterProtocol: class {
    func closeCurrentViewController()
}

protocol ModuleCofiguratorProtocol: class {
    func configure(with viewController: ModuleViewController)
}
