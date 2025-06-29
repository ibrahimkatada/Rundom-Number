//
//  ViewController.swift
//  Rundom Number
//
//  Created by Ибрагим Чахкиев on 28.06.2025.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    
    @IBOutlet var getRandomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 15
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? SettingsViewController
        
        settingsVC?.minimumValue = minimumValueLabel.text
        settingsVC?.maximumValue = maximumValueLabel.text
    }

    @IBAction func getRundomNumberTapped() {
        let minimumMumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNubmer = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumMumber...maximumNubmer).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        let settingsVC = segue.source as? SettingsViewController
        minimumValueLabel.text = settingsVC?.minimumValueTF.text
        maximumValueLabel.text = settingsVC?.maximumValueTF.text
    }
}

