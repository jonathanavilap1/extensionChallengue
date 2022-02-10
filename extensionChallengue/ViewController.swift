//
//  ViewController.swift
//  extensionChallengue
//
//  Created by Jonathan Avila on 09/02/22.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var extensionLabel: UILabel!
   var btMoveTo: UIButton = UIButton()

   override func viewDidLoad() {
      super.viewDidLoad()
      updateBackground()
      updateFontColor(extensionLabel!)
      updateFont(extensionLabel!)
      setupButton()
   }

   func setupButton() {
      btMoveTo.frame = CGRect(x: 200, y: 150, width: 200, height: 50)
      btMoveTo.setTitle("Move to screen", for: .normal)
      btMoveTo.setTitleColor(.white, for: .normal)
      btMoveTo.addTarget(self, action: #selector(moveToSecondScreen), for: .touchUpInside)
      view.addSubview(btMoveTo)
   }

   @objc func moveToSecondScreen() {
      moveTo(screen: SecondViewController(), showStyle: .fullScreen)
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
      updateBackgroundExt()
   }

   func moveTo(screen: UIViewController, showStyle: UIModalPresentationStyle = .automatic) {
      screen.modalPresentationStyle = showStyle
      present(screen, animated: true)
   }
   
   
}

