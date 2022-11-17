//
//  ColorView.swift
//  TikoJanikashvili-Lecture12
//
//  Created by Tiko Janikashvili on 16.11.22.
//

import UIKit

class ColorView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    
    var label: String?
    var color: UIColor?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    
    private func setup() {
        titleLabel.text = label
        titleLabel.textColor = color
    }
    
    @IBAction private func changeButtonColor(_ sender: UIButton) {
        print(#function)
    }
}
