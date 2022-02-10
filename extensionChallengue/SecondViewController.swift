//
// Created by Hamon on 09/02/22.
//

import UIKit

class SecondViewController: UIViewController {

    private lazy var labelText: UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateBackgroundExt()
        setupLabel()
    }

    private func setupLabel() {
        labelText.frame = CGRect(x: 200, y: 100, width: 100, height: 40)
        labelText.text = " Only a probe"
        labelText.updateFont()
        labelText.updateFontColor()
        view.addSubview(labelText)
    }

}

extension UILabel {
    func updateFont() {
        self.font =  UIFont(name:"arial", size: 20.0)
        self.textColor = .red
    }

    func updateFontColor() {
        self.backgroundColor = .white
    }
}

extension UIViewController {

    func updateBackgroundExt() {
        self.view.backgroundColor = .blue
    }

}