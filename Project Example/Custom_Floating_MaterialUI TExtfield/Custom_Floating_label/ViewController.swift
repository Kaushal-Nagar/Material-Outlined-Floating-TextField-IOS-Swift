//
//  ViewController.swift
//  Custom_Floating_label
//
//  Created by Kaushal Nagar.
//

import UIKit
import MaterialComponents

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var vwHeaderView: UIView!
    @IBOutlet weak var tfRequiredTextfieldExample: CustomOutlinedFloatingTextField!
    @IBOutlet weak var tfSecureTextentryExample: CustomOutlinedFloatingTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfRequiredTextfieldExample.delegate = self
        tfSecureTextentryExample.delegate = self
        setUI()
    }
    override func viewWillAppear(_ animated: Bool) {
        tfSecureTextentryExample.isSecureTextEntry = true
    }
    
    //MARK: - Helper Methods
    
    func setUI() {
        vwHeaderView.layer.cornerRadius = 15
        vwHeaderView.layer.borderColor = UIColor.label.cgColor
        vwHeaderView.layer.borderWidth = 1
    }
    
    // MARK: - UITextFieldDelegate Methods
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Dismiss the keyboard
        textField.resignFirstResponder()
        return true
    }
}

