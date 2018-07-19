//
//  ModulePresenter.swift
//  VIPER-Template
//
//  Created by Stanly Shiyanovskiy on 19.07.2018.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import UIKit

class ModulePresenter: ModulePresenterProtocol {
    
    private weak var view: ModuleViewProtocol!
    public var interactor: ModuleInteractorProtocol!
    public var router: ModuleRouterProtocol!
    
    required init(view: ModuleViewProtocol) {
        self.view = view
    }
    
    // MARK: - ModulePresenterProtocol methods
    
    func configureView() {
        view.setLabelTitle(with: interactor.labelTitle)
    }
    
    func closeButtonClicked() {
        router.closeCurrentViewController()
    }
    
    func changeColorButtonClicked() {
        interactor.getRandomColor()
    }
    
    func updateBackgroundColor(with color: UIColor) {
        view.setBackground(with: color)
    }
}
