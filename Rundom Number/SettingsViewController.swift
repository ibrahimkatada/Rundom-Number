//
//  SettingsViewController.swift
//  Rundom Number
//
//  Created by Ибрагим Чахкиев on 28.06.2025.
//

import UIKit

final class SettingsViewController: UIViewController {
    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
        
    }
    

    @IBAction func canselButtonAction() {
        dismiss(animated: true)
    }
    
}
