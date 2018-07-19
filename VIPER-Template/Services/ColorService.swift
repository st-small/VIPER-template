//
//  ColorService.swift
//  VIPER-Template
//
//  Created by Stanly Shiyanovskiy on 19.07.2018.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import Foundation
import UIKit

protocol ColorServiceProtocol {
    
    func getRandomColor(completion: @escaping (UIColor) -> ())
}


class ColorService: ColorServiceProtocol {
    
    // MARK: - ColorServiceProtocol methods
    
    func getRandomColor(completion: @escaping (UIColor) -> ()) {
        let color = UIColor(red: CGFloat(arc4random()) / CGFloat(UInt32.max), 
                       green: CGFloat(arc4random()) / CGFloat(UInt32.max), 
                       blue: CGFloat(arc4random()) / CGFloat(UInt32.max), 
                       alpha: 1.0)
        completion(color)
    }
}
