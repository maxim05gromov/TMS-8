//
//  ViewController.swift
//  HW8
//
//  Created by Максим Громов on 04.07.2024.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy var mainLabel = UILabel()
    lazy var usernameLabel = UILabel()
    lazy var loginTextField = UITextField()
    lazy var passwordLabel = UILabel()
    lazy var passwordTextField = UITextField()
    lazy var loginButton = UIButton()
    lazy var registerButton = UIButton()
    lazy var background = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(background)
        background.snp.makeConstraints { make in
            make.top.leading.trailing.bottom.equalTo(self.view)
        }
        background.image = UIImage(named: "MainImage")
        background.contentMode = .center
        
        
        
        mainLabel.text = "My Home control"
        mainLabel.textColor = .white
        mainLabel.font = .systemFont(ofSize: 32)
        mainLabel.textAlignment = .center
        view.addSubview(mainLabel)
        mainLabel.snp.makeConstraints { make in
            make.height.equalTo(70)
            make.leading.trailing.equalTo(self.view).inset(50)
            make.top.equalTo(self.view).inset(100)
        }
        
        
        usernameLabel.text = "Username"
        usernameLabel.textColor = .white
        usernameLabel.font = .systemFont(ofSize: 24)
        view.addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(self.view).inset(50)
            make.top.equalTo(mainLabel).inset(150)
        }
        
        
        loginTextField.placeholder = "Please enter username"
        loginTextField.borderStyle = .roundedRect
        view.addSubview(loginTextField)
        loginTextField.snp.makeConstraints { make in
            make.leading.trailing.equalTo(usernameLabel)
            make.top.equalTo(usernameLabel).inset(35)
            
        }
        
        
        passwordLabel.text = "Password"
        passwordLabel.textColor = .white
        passwordLabel.font = .systemFont(ofSize: 24)
        view.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.leading.trailing.equalTo(usernameLabel)
            make.top.equalTo(loginTextField).inset(55)
        }
        
        
        passwordTextField.placeholder = "Please enter password"
        passwordTextField.borderStyle = .roundedRect
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.leading.trailing.equalTo(loginTextField)
            make.top.equalTo(passwordLabel).inset(35)
        }
        
        
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemGray5
        loginButton.setTitleColor(.black, for: .normal)
        view.addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField).inset(100)
            make.centerX.equalTo(self.view)
            make.width.equalTo(150)
        }
        
        
        registerButton.addTarget(self, action: #selector(registerButtonPressed), for: .touchUpInside)
        registerButton.setTitle("Register", for: .normal)
        view.addSubview(registerButton)
        registerButton.snp.makeConstraints { make in
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(self.view).inset(70)
        }
        
    }
    
    @objc func loginButtonPressed(){
        let controller = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as? HomeViewController
        guard let controller else { return }
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
    }
    
    @objc func registerButtonPressed(){
        let registerForm = RegistrationViewController()
        registerForm.modalPresentationStyle = .formSheet
        self.present(registerForm, animated: true)
    }
}

