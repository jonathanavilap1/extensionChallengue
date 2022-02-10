//
//  ViewController.swift
//  extensionChallengue
//
//  Created by Jonathan Avila on 09/02/22.
//

import UIKit

class ViewController: UIViewController {
   @IBOutlet weak var extensionLabel: UILabel!
   var label: UILabel?
   override func viewDidLoad() {
      super.viewDidLoad()
      updateBackground()
      updateFontColor(extensionLabel!)
      updateFont(extensionLabel!)
   }


}

protocol sameBackgroud{
   func updateBackground()
   func updateFont(_ label: UILabel)
   func updateFontColor(_ label: UILabel)
}

extension ViewController: sameBackgroud{
   func updateFont(_ label: UILabel) {
      label.font =  UIFont(name:"arial", size: 20.0)
      label.textColor = .red
   }
   
   func updateFontColor(_ label: UILabel) {
      label.backgroundColor = .white
   }
   
   func updateBackground() {
      self.view.backgroundColor = .blue
   }
   
   
}

