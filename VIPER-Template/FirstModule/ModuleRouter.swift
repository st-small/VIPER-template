//
//  ModuleRouter.swift
//  VIPER-Template
//
//  Created by Stanly Shiyanovskiy on 19.07.2018.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import UIKit

class ModuleRouter: ModuleRouterProtocol {
    
    private weak var viewController: ModuleViewController!
    
    init(viewController: ModuleViewController) {
        self.viewController = viewController
    }
    
    public func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
