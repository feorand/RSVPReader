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
        
        let sourceString = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt odio eget posuere egestas. Curabitur rhoncus nisl mi, vel efficitur sapien posuere pellentesque. Suspendisse potenti. Proin quis fringilla urna, vel ultricies eros. Etiam nisl felis, mollis sed blandit et, congue quis magna. Nam venenatis erat ut accumsan placerat. Cras quis augue purus. In id ex lobortis, eleifend arcu id, aliquet lacus. Nunc non ultrices ligula, quis tristique augue. Ut est massa, lacinia eget porttitor vel, pretium pellentesque massa. Nullam vestibulum dictum tortor et facilisis."

        text = Text(fromSource: sourceString)
        currentWordLabel.text = text.currentWord
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startReading() {
        timer.invalidate()
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { currentTimer in
            
            do {
                try self.text.moveNext()
            } catch {
                currentTimer.invalidate()
                return
            }
            
            self.currentWordLabel.text = self.text.currentWord
        }
    }
    
    @IBAction func stopReading() {
        timer.invalidate()
    }
    
    @IBAction func moveBackward() {
        if timer.isValid {
            return
        }
        
        text.moveBackward(numberOfWords: 3)
        currentWordLabel.text = text.currentWord
    }
    
    @IBAction func moveForward() {
        if timer.isValid {
            return
        }
        
        text.moveForward(numberOfWords: 3)
        currentWordLabel.text = text.currentWord
    }
    
}

