import UIKit

class MainPageController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white

        // Slayt gösterisi ekleme
        let slideShowView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200))
        slideShowView.backgroundColor = .lightGray
        view.addSubview(slideShowView)

        // Arama kutusu ekleme
        let searchField = UITextField(frame: CGRect(x: 20, y: slideShowView.frame.maxY + 20, width: view.frame.width - 40, height: 40))
        searchField.placeholder = "Ara..."
        searchField.backgroundColor = .white
        searchField.layer.borderWidth = 1
        searchField.layer.borderColor = UIColor.lightGray.cgColor
        searchField.layer.cornerRadius = 5
        view.addSubview(searchField)

        // Pazar yerlerine yönlendiren butonlar
        let buttonWidth = (view.frame.width - 60) / 2
        let buttonHeight: CGFloat = 100
        let button1 = createButton(title: "Pazar Yeri 1", frame: CGRect(x: 20, y: searchField.frame.maxY + 20, width: buttonWidth, height: buttonHeight))
        let button2 = createButton(title: "Pazar Yeri 2", frame: CGRect(x: button1.frame.maxX + 20, y: searchField.frame.maxY + 20, width: buttonWidth, height: buttonHeight))
        let button3 = createButton(title: "Pazar Yeri 3", frame: CGRect(x: 20, y: button1.frame.maxY + 20, width: buttonWidth, height: buttonHeight))
        let button4 = createButton(title: "Pazar Yeri 4", frame: CGRect(x: button3.frame.maxX + 20, y: button2.frame.maxY + 20, width: buttonWidth, height: buttonHeight))

        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
    }

    private func createButton(title: String, frame: CGRect) -> UIButton {
        let button = UIButton(type: .system)
        button.frame = frame
        button.setTitle(title, for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }

    @objc private func buttonTapped(sender: UIButton) {
        // Butonlara tıklama işlemlerini burada işleyebilirsiniz
        switch sender.currentTitle {
        case "Pazar Yeri 1":
            // Yönlendirme işlemi
            break
        case "Pazar Yeri 2":
            // Yönlendirme işlemi
            break
        case "Pazar Yeri 3":
            // Yönlendirme işlemi
            break
        case "Pazar Yeri 4":
            // Yönlendirme işlemi
            break
        default:
            break
        }
    }
}
