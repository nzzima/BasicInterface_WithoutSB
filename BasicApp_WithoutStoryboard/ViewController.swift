//
//  ViewController.swift
//  BasicApp_WithoutStoryboard
//
//  Created by Nikita Krylov on 29.07.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Start view")
        view.backgroundColor = .white
        view.addSubview(imageView)
        view.addSubview(labelAutho)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(button)
        setupConstraints()
    }
    
    private var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person"))
        imageView.backgroundColor = .white
        return imageView
    }()
    
    private var labelAutho: UILabel = {
       let label = UILabel()
        label.text = "Authorization"
        label.font = UIFont(name: "Times New Roman", size: 35)
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 3.0
        label.layer.cornerRadius = 12
        label.textAlignment = .center
        label.textColor = .black
        label.backgroundColor = .white
        return label
    }()
    
    private var loginField: UITextField = {
       let loginTextField = UITextField(frame: CGRect(x: 100, y: 400, width: 200, height: 55))
        loginTextField.placeholder = "Login"
        loginTextField.borderStyle = UITextField.BorderStyle.roundedRect
        loginTextField.layer.borderColor = UIColor.black.cgColor
        loginTextField.layer.cornerRadius = 12
        loginTextField.layer.borderWidth = 1.0
        return loginTextField
    }()
    
    private var passwordField: UITextField = {
       let passwordTextField = UITextField(frame: CGRect(x: 100, y: 470, width: 200, height: 55))
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordTextField.layer.borderColor = UIColor.black.cgColor
        passwordTextField.layer.cornerRadius = 12
        passwordTextField.layer.borderWidth = 1.0
        return passwordTextField
    }()
    
    private var button: UIButton = {
       let button = UIButton()
        button.setTitle("Enter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 12
        return button
    }()
    
    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        labelAutho.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            labelAutho.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelAutho.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            labelAutho.widthAnchor.constraint(equalToConstant: 250),
            labelAutho.heightAnchor.constraint(equalToConstant: 75),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 50),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}

