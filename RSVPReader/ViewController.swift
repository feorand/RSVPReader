//
//  ViewController.swift
//  RSVPReader
//
//  Created by Pavel Prokofyev on 10.10.16.
//  Copyright © 2016 pavelprokofyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentWordLabel: UILabel!
    
    var text: Text!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        text = Text(fromSource: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
        currentWordLabel.text = text.showNextWord()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startReading() {
        currentWordLabel.text = text.showNextWord()
    }
    
    @IBAction func stopReading() {
        
    }
    
}

