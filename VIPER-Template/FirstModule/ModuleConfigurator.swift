//
//  ModuleConfigurator.swift
//  VIPER-Template
//
//  Created by Stanly Shiyanovskiy on 19.07.2018.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import UIKit

class ModuleConfigurator: ModuleCofiguratorProtocol {
    
    public func configure(with viewController: ModuleViewController) {
        
        let presenter = ModulePresenter(view: viewController)
        let interactor = ModuleInteractor(presenter: presenter)
        let router = ModuleRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
