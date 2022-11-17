//
//  ColorViewController.swift
//  TikoJanikashvili-Lecture12
//
//  Created by Tiko Janikashvili on 16.11.22.
//

import UIKit

protocol ColorViewControllerDelegate {
    func changeButton(color: UIColor?)
    func changeView(color: UIColor?)
}

class ColorViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var contentView: UIView!
    
    // MARK: - Properties
    
    var delegate: ColorViewControllerDelegate?

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Change corner of view
    
    private func setup() {
        contentView.layer.cornerRadius = 10
    }
    
    
    // MARK: - IBActions
    
    @IBAction func changeButtonColor(_ sender: UIButton) {
        delegate?.changeButton(color: sender.backgroundColor)
        self.dismiss(animated: true)
    }
    
    @IBAction func changeViewColor(_ sender: UIButton) {
        delegate?.changeView(color: sender.backgroundColor)
        self.dismiss(animated: true)
    }
}

