import Foundation
import UIKit
import Firebase

class LoginController: UIViewController {
    
    // MARK: - Properties
    private let loginView = LoginView()
    
    // MARK: - Lifecycle
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureActions()
    }
    
    // MARK: - UI Configuration
    private func configureUI() {
        navigationController?.navigationBar.isHidden = true
    }
    
    // MARK: - Actions
    private func configureActions() {
        loginView.signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        RegisterController.newUserButton.addTarget(self, action: #selector(didTapRegister), for: .touchUpInside)
        loginView.forgotPasswordButton.addTarget(self, action: #selector(didTapForgotPassword), for: .touchUpInside)
    }

    // MARK: - Selectors
    @objc private func didTapSignIn() {
        guard let email = loginView.usernameField.text, !email.isEmpty,
              let password = loginView.passwordField.text, !password.isEmpty else {
            print("Username and password cannot be empty.")
            // Kullanıcıya uygun bir hata mesajı gösterebilirsiniz.
            return
        }

        let loginUserRequest = LoginUserRequest(username: "", email: email, password: password)
        UserService.shared.signIn(with: loginUserRequest) { error in
            if let error = error {
                print("Failed to sign in: \(error.localizedDescription)")
                // Kullanıcıya uygun bir hata mesajı gösterebilirsiniz.
            } else {
                print("User signed in successfully.")
                // Kullanıcı başarılı bir şekilde giriş yaptı, MainPageController'a yönlendirme işlemi yapılabilir
                let mainPageController = MainPageController() // MainPageController'ı oluştur
                mainPageController.modalPresentationStyle = .fullScreen
                self.present(mainPageController, animated: true, completion: nil) // MainPageController'a yönlendir
            }
        }
    }
}
