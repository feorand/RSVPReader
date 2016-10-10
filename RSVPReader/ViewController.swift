//
//  ViewController.swift
//  RSVPReader
//
//  Created by Pavel Prokofyev on 10.10.16.
//  Copyright © 2016 pavelprokofyev. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var currentWordLabel: UILabel!
    
    var text: Text!
    var timer: Timer = Timer()
    
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
        timer.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.7, repeats: true) { currentTimer in
            let nextWord = self.text.showNextWord()
            
            if nextWord == nil {
                currentTimer.invalidate()
                return
            }

            self.currentWordLabel.text = nextWord
        }
    }
    
    @IBAction func stopReading() {
        timer.invalidate()
    }
    
}

