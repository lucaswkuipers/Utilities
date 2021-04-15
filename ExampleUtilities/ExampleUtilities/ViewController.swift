//
//  ViewController.swift
//  ExampleUtilities
//
//  Created by Lucas Werner Kuipers on 15/04/2021.
//

import UIKit
import Utilities

class ViewController: UIViewController {
	
	@IBOutlet weak var doubleToConvertTextField: UITextField!
	@IBOutlet weak var moneyConvertedLabel: UILabel!

	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupUI()


		let idList = ["123", "321"]
		let encodedIDList = Utilities.encode(idList: idList)
		let decodedIDList = Utilities.decode(idListString: encodedIDList)
		let formatted = Utilities.formatCoin(coinAmount: 123456789.123456789)
		
		// Do any additional setup after loading the view.
	}
	
	func setupUI() {
		doubleToConvertTextField.delegate = self
		doubleToConvertTextField.addTarget(self, action: #selector(ViewController.textFieldDidChange(_:)), for: .editingChanged)
	}

}

extension ViewController: UITextFieldDelegate {
	@objc func textFieldDidChange(_ textField: UITextField) {
		moneyConvertedLabel.text = Utilities.formatCoin(coinAmount: Double(textField.text!) ?? 0.00)
	}
}
