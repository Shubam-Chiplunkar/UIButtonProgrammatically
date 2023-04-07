//
//  ViewController.swift
//  UIButtonProgrammatically
//
//  Created by mayank ranka on 27/03/23.
//

import UIKit

class ViewController: UIViewController {
    
//    var buttonUiOutlet = UIButton()
    var blueView = UIView()
    var redView = UIView()
    var labelUI = UILabel()
    override func viewDidLoad() {
//        buttonUiOutlet = UIButton.init(type: .system)
//        buttonUiOutlet.translatesAutoresizingMaskIntoConstraints = false
//        buttonUiOutlet.frame = CGRect(x: 50.0, y: 200.0, width: 200.0, height: 55.0)
//        buttonUiOutlet.layer.cornerRadius = 10
//        buttonUiOutlet.setTitle("Submit", for: .normal)
//        buttonUiOutlet.setTitleColor(.white, for: .normal)
//        buttonUiOutlet.addTarget(self, action: #selector(buttonConfig(sender : )), for: .touchUpInside)
//        buttonUiOutlet.backgroundColor = UIColor.black
//        self.view.addSubview(buttonUiOutlet)
//        setConstraints()
        
        blueView.backgroundColor = UIColor.black
        blueView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(blueView)
    
        redView.backgroundColor = UIColor.red
        redView.translatesAutoresizingMaskIntoConstraints = false
//        redView.frame = CGRect(x: 20, y: 200, width: 100, height: 52)
        blueView.addSubview(redView)
        
        labelConstraints()
        setConstraints()

        super.viewDidLoad()
    
    }
    
    
    func labelConstraints(){
        
        labelUI.translatesAutoresizingMaskIntoConstraints = false
        labelUI.backgroundColor = UIColor.yellow
        labelUI.text = "Hello Developer"
        labelUI.textColor = UIColor.black
        labelUI.layer.cornerRadius = 10
        blueView.addSubview(labelUI)
        NSLayoutConstraint.activate([
            labelUI.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 0.4),
            labelUI.heightAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 0.03),
            labelUI.leadingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: 150),
            labelUI.trailingAnchor.constraint(equalTo: blueView.trailingAnchor, constant: 50),
            labelUI.topAnchor.constraint(equalTo: blueView.topAnchor, constant: 200),
            labelUI.bottomAnchor.constraint(equalTo: blueView.bottomAnchor, constant: 100)
        ])
    }
    
//    @objc func buttonConfig(sender : UIButton )
//    {
//        print("BUtton Clicked")
//    }

//    func loadButtonView() {
//
//    }
    
    func setConstraints(){
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(blueView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(blueView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
//        constraints.append(redView.leadingAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.leadingAnchor, constant: 200))
//        constraints.append(redView.trailingAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.trailingAnchor, constant: -100))
//        constraints.append(redView.bottomAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.bottomAnchor, constant: -200))
//        constraints.append(redView.topAnchor.constraint(equalTo: blueView.safeAreaLayoutGuide.topAnchor, constant: 200))
//
//
        constraints.append(redView.widthAnchor.constraint(equalTo: blueView.widthAnchor, multiplier: 0.3))
        constraints.append(redView.heightAnchor.constraint(equalTo: blueView.heightAnchor, multiplier: 0.04))
        constraints.append(redView.centerYAnchor.constraint(equalTo: blueView.centerYAnchor))
        constraints.append(redView.centerXAnchor.constraint(equalTo: blueView.centerXAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }


}

