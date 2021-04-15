//
//  ViewController.swift
//  ExampleUtilities
//
//  Created by Lucas Werner Kuipers on 15/04/2021.
//

import UIKit
import Utilities

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let idList = ["123", "321"]
		
		let encodedIDList = Utilities.encode(idList: idList)
		let decodedIDList = Utilities.decode(idListString: encodedIDList)
		
		let formatted = Utilities.formatCoin(coinAmount: 123456789.123456789)
		print(formatted)
		// Do any additional setup after loading the view.
	}


}

