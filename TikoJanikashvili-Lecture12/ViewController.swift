//
//  ViewController.swift
//  TikoJanikashvili-Lecture12
//
//  Created by Tiko Janikashvili on 16.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet private weak var contentView: UIView!
    @IBOutlet private weak var colorButton: UIButton!
    @IBOutlet weak var customButton: UIButton!
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Set corner of button
    
    private func setup() {
        colorButton.layer.cornerRadius = 10
        customButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ColorViewController" {
            if let vc = segue.destination as? ColorViewController {
                vc.delegate = self
            }
        }
         
        if segue.identifier == "CustomColorViewController" {
            if let vc = segue.destination as? CustomColorViewController {
                vc.titleLabel = "ღილაკის ფერის არჩევა"
            }
        }
    }
}

// MARK: - Extension

extension ViewController: ColorViewControllerDelegate {
    func changeButton(color: UIColor?) {
        colorButton.backgroundColor = color
    }
    
    func changeView(color: UIColor?) {
        contentView.backgroundColor = color
    }
}

