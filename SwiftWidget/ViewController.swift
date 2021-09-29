//
//  ViewController.swift
//  SwiftWidget
//
//  Created by Randimal Geeganage on 2021-06-15.
//

import UIKit

class ViewController: UIViewController {
    
    private let field: UITextField = {
        let field = UITextField()
        field.placeholder = "Enter Text"
        field.backgroundColor = .white
        return field
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        button.setTitleColor(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1), for: .normal)
        button.setTitle("Save", for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .init(cgColor: #colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1))
        view.addSubview(field)
        view.addSubview(button)
        field.becomeFirstResponder()
        
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        field.frame = CGRect(x: 20, y: view.safeAreaInsets.top+100, width: view.frame.size.width-40, height: 50)
        
        button.frame = CGRect(x: 50, y: view.safeAreaInsets.top+170, width: view.frame.size.width-90, height: 50)
    }

    @objc private func didTapButton(){
        let userDefault = UserDefaults(suiteName: "text")
        let text = field.text
        
        userDefault?.setValue(text, forKey: "text")
//        widgetCenter.shared
    }

}

