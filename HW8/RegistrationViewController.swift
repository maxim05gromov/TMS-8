//
//  RegistrationViewController.swift
//  HW8
//
//  Created by Максим Громов on 04.07.2024.
//

import UIKit

class RegistrationViewController: UIViewController {
    lazy var background = UIImageView()
    lazy var mainLabel = UILabel()
    lazy var usernameLabel = UILabel()
    lazy var usernameTextField = UITextField()
    lazy var passwordLabel = UILabel()
    lazy var passwordTextField = UITextField()
    lazy var confirmPasswordLabel = UILabel()
    lazy var confirmPasswordTextField = UITextField()
    lazy var saveButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        background.image = UIImage(named: "MainImage")
        background.contentMode = .center
        view.addSubview(background)
        background.snp.makeConstraints { make in
            make.top.bottom.trailing.leading.equalTo(view)
        }
        
    }
    


}
