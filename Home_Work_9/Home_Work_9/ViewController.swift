//
//  ViewController.swift
//  Home_Work_9
//
//  Created by Vadim Samoilov on 15.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var redView: UIView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        redView.layer.cornerRadius = 50
        
        greenView.backgroundColor = .green.withAlphaComponent(0.3)
        yellowView.backgroundColor = .yellow.withAlphaComponent(0.3)
        redView.backgroundColor = .red.withAlphaComponent(0.3)
    }

    @IBAction func buttonAction(_ sender: Any) {
        button.setTitle("NEXT", for: .normal)
        switch count {
        case 0 : first()
        case 1 : second()
        case 2 : third()
        case 3 : fourth()
        default : if count == 4 {
            count = 0
            button.setTitle("START", for: .normal)
            greenView.backgroundColor = .green.withAlphaComponent(0.3)
            yellowView.backgroundColor = .yellow.withAlphaComponent(0.3)
            redView.backgroundColor = .red.withAlphaComponent(0.3)
        }
        }
    }
    
    func first() {
        redView.backgroundColor = .red.withAlphaComponent(1)
        yellowView.backgroundColor = .yellow.withAlphaComponent(0.3)
        greenView.backgroundColor = .green.withAlphaComponent(0.3)
        count += 1
    }
    
    func second() {
        redView.backgroundColor = .red.withAlphaComponent(1)
        yellowView.backgroundColor = .yellow.withAlphaComponent(1)
        greenView.backgroundColor = .green.withAlphaComponent(0.3)
        count += 1
    }
    
    func third() {
        redView.backgroundColor = .red.withAlphaComponent(0.3)
        yellowView.backgroundColor = .yellow.withAlphaComponent(0.3)
        greenView.backgroundColor = .green.withAlphaComponent(1)
        count += 1
    }
    
    func fourth() {
        redView.backgroundColor = .red.withAlphaComponent(0.3)
        yellowView.backgroundColor = .yellow.withAlphaComponent(1)
        greenView.backgroundColor = .green.withAlphaComponent(0.3)
        count += 1
    }
    
}

