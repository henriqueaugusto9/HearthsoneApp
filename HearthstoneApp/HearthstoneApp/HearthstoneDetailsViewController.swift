import UIKit

protocol HearthstoneDetailsViewControllerProtocol {
    func showItems(items: [UILabel])
}

final class HearthstoneDetailsViewController: UIViewController, HearthstoneDetailsViewControllerProtocol {
    
    private lazy var containerImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var stackItems: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 4
        return stack
    }()
    
    var interactor: HearthstoneDetailsInteractorProtocol?
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
    func showItems(items: [UILabel]) {
        
    }
}


extension HearthstoneDetailsViewController: ViewConfiguration {
    func configViews() {
        
    }
    
    func buildViews() {
        
    }
    
    func setupConstraints() {
        
    }
}

extension UILabel {
    static func build(with size: CGFloat) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: size)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}


//A imagem principal do cartão
//Nome
//Descrição "flavor"
//Descrição curta
//Set pertencente
//Tipo
//Facção
//Raridade
//Ataque
//Custo
//Health
