//
//  DrummerViewController.swift
//  Drummer
//
//  Created by David Xiong on 2/14/19.
//  Copyright © 2020 iosdecal. All rights reserved.
//

import UIKit

class DrummerViewController: UIViewController {

    // Our DrumKit models as an instance of the object
    
    // Drum Kit 0 (Acoustic Drum Kit)
    let drumKit0 = DrumKit(drumKitID: 0)
    // Drum Kit 1 (Electronic Drum Kit)
    let drumKit1 = DrumKit(drumKitID: 1)
    
    // The currently selected drum kit (default = 0)
    var currentDrumKit: DrumKit?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // sets the default drum kit to drumkit0
        currentDrumKit = drumKit0
    }
    
    
    // YOUR CODE HERE

    @IBAction func drumButtonWasPressed(_ sender: UIButton) {
        switch sender.tag {
        case 0:
            currentDrumKit?.playDrumSound(forDrumWithTag: 0)
        case 1:
            currentDrumKit?.playDrumSound(forDrumWithTag: 1)
        case 2:
            currentDrumKit?.playDrumSound(forDrumWithTag: 2)
        case 3:
            currentDrumKit?.playDrumSound(forDrumWithTag: 3)
        case 4:
            currentDrumKit?.playDrumSound(forDrumWithTag: 4)
        case 5:
            currentDrumKit?.playDrumSound(forDrumWithTag: 5)
        case 6:
            currentDrumKit?.playDrumSound(forDrumWithTag: 6)
        
        default:
            currentDrumKit?.playDrumSound(forDrumWithTag: 0)
        
        }
        
    }
    
    
    @IBAction func drumKitWasChanged(_ sender: UISegmentedControl) {
        let typeOfDrum = sender.selectedSegmentIndex
        currentDrumKit = DrumKit(drumKitID: typeOfDrum)
    }
    
}

