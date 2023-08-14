import UIKit

protocol HearthstoneDetailsViewControllerProtocol {
    func showItems(items: [String: String])
}

final class HearthstoneDetailsViewController: UIViewController, HearthstoneDetailsViewControllerProtocol {
    
    private lazy var containerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "default-icon")
        return imageView
    }()
    
    private lazy var verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    init(items: [String: String]) {
        super.init(nibName: nil, bundle: nil)
        showItems(items: items)
    }
    
    required init?(coder: NSCoder) { nil }
    
    func showItems(items: [String: String]) {
        items.forEach {
            if !$0.key.isEmpty && $0.value != "image" {
                let stack = UIStackView()
                stack.axis = .horizontal
                stack.distribution = .fill
                stack.spacing = 2
                
                stack.addArrangedSubview(UILabel.build(with: $0.value))
                $0.value == "Descrição curta" ?
                stack.addArrangedSubview(UILabel.buildAttr(with: $0.key)) :
                stack.addArrangedSubview(UILabel.buildAttr(with: $0.key))

                verticalStack.addArrangedSubview(stack)
            }
        }
        
        let item = items.first(where: { $0.value == "image" })
        containerImage.setImageFrom(stringUrl: item?.key ?? "")
        setupViews()
    }
}


extension HearthstoneDetailsViewController: ViewConfiguration {
    func configViews() {
        view.backgroundColor = .white
    }
    
    func buildViews() {
        [containerImage, verticalStack].forEach(view.addSubview)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            containerImage.topAnchor.constraint(equalTo: view.topAnchor),
            containerImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerImage.heightAnchor.constraint(equalToConstant: 165),
            
            verticalStack.topAnchor.constraint(equalTo: containerImage.bottomAnchor),
            verticalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            verticalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
}
