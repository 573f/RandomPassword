//
//  MainWindowController.swift
//  RandomPassword
//
//  Created by Stephen Skubik-Peplaski on 8/29/15.
//  Copyright (c) 2015 Stephen Skubik-Peplaski. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var passwordLengthSlider: NSSlider!
    @IBOutlet weak var lengthTextField: NSTextField!
    @IBOutlet weak var digitsSlider: NSSlider!
    @IBOutlet weak var specialsSlider: NSSlider!
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func generatePassword(sender: AnyObject) {
        let length = passwordLengthSlider.integerValue
        let digits = digitsSlider.integerValue
        let specials = specialsSlider.integerValue
        
        let password = generateRandomString(length, digits, specials)
        textField.stringValue = password
    }
    
    @IBAction func updateLength(sender: AnyObject) {
        self.lengthTextField.stringValue = String(passwordLengthSlider.integerValue)
    }
}
