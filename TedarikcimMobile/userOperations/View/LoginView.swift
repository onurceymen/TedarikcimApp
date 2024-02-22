import Foundation
import UIKit

class LoginView: UIView {
    
    // MARK: - UI Components
    public let headerView = AuthHeaderView(title: "Sign In", subTitle: "Sign in to your account")
    
    public let usernameField = CustomTextField(fieldType: .username)
    public let passwordField = CustomTextField(fieldType: .password)
    
    public let signInButton = CustomButton(title: "Sign In", hasBackground: true, fontSize: .big)
    public let newUserButton = CustomButton(title: "New User? Create Account.", fontSize: .med)
    public let forgotPasswordButton = CustomButton(title: "Forgot Password?", fontSize: .small)
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    public func setupUI() {
        backgroundColor = .systemBackground
        
        addSubview(headerView)
        addSubview(usernameField)
        addSubview(passwordField)
        addSubview(signInButton)
        addSubview(newUserButton)
        addSubview(forgotPasswordButton)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false
        usernameField.translatesAutoresizingMaskIntoConstraints = false
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        newUserButton.translatesAutoresizingMaskIntoConstraints = false
        forgotPasswordButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: topAnchor),
            headerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 222),
            
            usernameField.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 12),
            usernameField.centerXAnchor.constraint(equalTo: centerXAnchor),
            usernameField.heightAnchor.constraint(equalToConstant: 55),
            usernameField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.85),
            
            passwordField.topAnchor.constraint(equalTo: usernameField.bottomAnchor, constant: 22),
            passwordField.centerXAnchor.constraint(equalTo: centerXAnchor),
            passwordField.heightAnchor.constraint(equalToConstant: 55),
            passwordField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.85),
            
            signInButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 22),
            signInButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            signInButton.heightAnchor.constraint(equalToConstant: 55),
            signInButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.85),
            
            newUserButton.topAnchor.constraint(equalTo: signInButton.bottomAnchor, constant: 11),
            newUserButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            newUserButton.heightAnchor.constraint(equalToConstant: 44),
            newUserButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.85),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: newUserButton.bottomAnchor, constant: 6),
            forgotPasswordButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            forgotPasswordButton.heightAnchor.constraint(equalToConstant: 44),
            forgotPasswordButton.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.85),
        ])
    }
}
