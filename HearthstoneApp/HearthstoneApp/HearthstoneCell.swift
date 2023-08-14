import UIKit

protocol HearthstoneCellProtocol {
    var imageURL: String { get }
    var name: String { get }
    var playerClass: String { get }
}

final class HearthstoneCell: UITableViewCell, ViewConfiguration {
    private lazy var imageContainer: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 12.5
        imageView.image = UIImage(named: "default-icon")
        return imageView
    }()
    
    private lazy var labelName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = config?.name
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var labelPlayerClass: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = config?.playerClass
        label.numberOfLines = 0
        return label
    }()
    
    private var config: HearthstoneCellProtocol?
    
    func config(config: HearthstoneCellProtocol) {
        self.config = config
        self.imageContainer.setImageFrom(stringUrl: config.imageURL)
        setupViews()
    }
    
    func configViews() {
        backgroundColor = .white
    }
    
    func buildViews() {
        [imageContainer, labelName, labelPlayerClass].forEach(contentView.addSubview)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            imageContainer.widthAnchor.constraint(equalToConstant: 70),
            
            imageContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            imageContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            imageContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            
            labelName.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 8),
            labelName.leadingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: 8),
            labelName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4),
            
            labelPlayerClass.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 4),
            labelPlayerClass.leadingAnchor.constraint(equalTo: imageContainer.trailingAnchor, constant: 8),
            labelPlayerClass.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -4)
        ])
    }
}
