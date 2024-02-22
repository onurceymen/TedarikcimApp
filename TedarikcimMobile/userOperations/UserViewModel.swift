import SwiftUI
import Firebase

class UserViewModel: ObservableObject {
    @Published var currentUser: User?

    func signIn(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error {
                print("Failed to sign in: \(error.localizedDescription)")
            } else {
                self.currentUser = result?.user
            }
        }
    }

    func signOut() {
        do {
            try Auth.auth().signOut()
            self.currentUser = nil
        } catch {
            print("Error signing out: \(error.localizedDescription)")
        }
    }
}

struct SignInView: View {
    @StateObject var viewModel = UserViewModel()
    @State private var email = "onurceymen@yahoo.com"
    @State private var password = "onur"

    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                viewModel.signIn(email: email, password: password)
            }, label: {
                Text("Sign In")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
}

struct ContentView: View {
    @StateObject var viewModel = UserViewModel()

    var body: some View {
        if let currentUser = viewModel.currentUser {
            Text("Welcome, \(currentUser.email ?? "")")
                .padding()
                .onTapGesture {
                    viewModel.signOut()
                }
        } else {
            SignInView()
        }
    }
}
