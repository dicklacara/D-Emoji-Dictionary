//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Applebaum on 8/23/16.
//  Copyright © 2016 La Cara. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = String(emoji.birthYear)
        definitionLabel.text = emoji.definition
        categoryLabel.text = emoji.category
        /*
        // ["😇","😎","😈","☠️","💋","👖","🕵️"]
        if emoji == "😇" {
            definitionLabel.text = "Happyface with Halo"
        }
        if emoji == "😎" {
            definitionLabel.text = "Cool Dude"
        }
        if emoji == "😈" {
            definitionLabel.text = "Purple Mask"
        }
        if emoji == "☠️" {
            definitionLabel.text = "Roll Dem Bones"
        }
        if emoji == "💋" {
            definitionLabel.text = "Kissyface"
        }
        */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
