//
//  ViewController.swift
//  FunFacts
//
//  Created by Erick Barbosa on 7/27/16.
//  Copyright © 2016 Erick Barbosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!
    let factModel = FactModel()
    let blueColor = UIColor.blue
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = self.factModel.getRandomFact()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFacts(_ sender: UIButton) {
        
        let randomColor = ColorModel().getRandomColors()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factModel.getRandomFact()
    
    }

}

