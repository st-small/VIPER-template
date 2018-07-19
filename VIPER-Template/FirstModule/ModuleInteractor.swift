//
//  ModuleInteractor.swift
//  VIPER-Template
//
//  Created by Stanly Shiyanovskiy on 19.07.2018.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation

class ModuleInteractor: ModuleInteractorProtocol {
       
    private weak var presenter: ModulePresenterProtocol!
    private let colorService: ColorServiceProtocol = ColorService()
    
    let labelTitle = "Second screen"
    
    required init(presenter: ModulePresenterProtocol) {
        self.presenter = presenter
    }
    
    func getRandomColor() {
        colorService.getRandomColor { color in
            self.presenter.updateBackgroundColor(with: color)
        }
    }
}
