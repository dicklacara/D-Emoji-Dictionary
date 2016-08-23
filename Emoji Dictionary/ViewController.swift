//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Richard Applebaum on 8/22/16.
//  Copyright © 2016 La Cara. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
//    var emojis = ["😇","😎","😈","☠️","💋","👖","🕵️"]
    
    var emojis: [Emoji] = []
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        emojis =  makeEmojiArray()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell

        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //var emojis = ["😇","😎","😈","☠️","💋","👖","🕵️"]
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😇"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Halo Happyface"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "Cool Dude"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😈"
        emoji3.birthYear = 2013
        emoji3.category = "Smiley"
        emoji3.definition = "Purple Mask"
        
        return [emoji1,emoji2,emoji3]
    }

}

