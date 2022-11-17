//
//  CustomColorViewController.swift
//  TikoJanikashvili-Lecture12
//
//  Created by Tiko Janikashvili on 17.11.22.
//

import UIKit

class CustomColorViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var changingButtonView: UIView!
    @IBOutlet weak var changingView: UIView!
    
    // MARK: - Properties
    var titleLabel: String?
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        setChangeButtonView()
        setChangeView()
    }
    
    private func setupLayout() {
        changingButtonView.layer.cornerRadius = 10
        changingView.layer.cornerRadius = 10
    }
    
    private func setChangeButtonView() {
        if let customView = Bundle.main.loadNibNamed("ColorView", owner: nil, options: nil)![0] as? ColorView {
            customView.label = "ღილაკის ფერის არჩევა"
            customView.color = .white
            customView.frame = changingButtonView.bounds
            changingButtonView.addSubview(customView)
        }
    }
    
    private func setChangeView() {
        if let customView = Bundle.main.loadNibNamed("ColorView", owner: nil, options: nil)![0] as? ColorView {
            customView.label = "გვერდის ფონის არჩევა"
            customView.frame = changingView.bounds
            changingView.addSubview(customView)
        }
    }
}
