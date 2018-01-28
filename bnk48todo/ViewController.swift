//
//  ViewController.swift
//  bnk48todo
//
//  Created by Chinwat K. on 28/1/2561 BE.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    // MARK: - Properties
    @IBOutlet weak var bnkLabel: UILabel!
    @IBOutlet weak var bnkTxtField: UITextField!
    @IBOutlet weak var photoImageView: UIImageView!
    
    // MARK: - ViewController func
    override func viewDidLoad() {
        super.viewDidLoad()
        self.bnkTxtField.delegate = self
        
    }
    // MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide keyboard
        self.bnkTxtField.resignFirstResponder()
        return true
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason) {
//        self.bnkLabel.text = self.bnkTxtField.text
//    }
    
    // MARK: - Actions.
    @IBAction func setLabel(_ sender: Any) {
        self.bnkLabel.text = self.bnkTxtField.text
    }
    @IBAction func setImageFromLibrary(_ sender: Any) {
    }
}

