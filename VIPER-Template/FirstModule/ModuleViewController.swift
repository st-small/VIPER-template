//
//  ModuleViewController.swift
//  VIPER-Template
//
//  Created by Stanly Shiyanovskiy on 19.07.2018.
//  Copyright © 2018 Stanly Shiyanovskiy. All rights reserved.
//

import UIKit

public class ModuleViewController: UIViewController, ModuleViewProtocol {
    
    @IBOutlet weak var screenLabel: UILabel!
    
    var presenter: ModulePresenterProtocol!
    let configurator: ModuleCofiguratorProtocol = ModuleConfigurator()
    
    // MARK: - Lifecycle methods
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(with: self)
        presenter.configureView()
    }
    
    override public var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    // MARK: - Action methods
    
    @IBAction func closeButtonClicked(_ sender: UIBarButtonItem) {
        presenter.closeButtonClicked()
    }
    
    @IBAction func changeColorButtonClicked(_ sender: UIBarButtonItem) {
        presenter.changeColorButtonClicked()
    }
    
    // MARK: - ModuleViewProtocol methods
    func setLabelTitle(with title: String) {
        screenLabel.text = title
    }
    
    func setBackground(with color: UIColor) {
        view.backgroundColor = color
    }
}









