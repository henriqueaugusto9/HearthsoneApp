import UIKit.UILabel

extension UILabel {
    static func build(with title: String) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = title
        label.textAlignment = .justified
        return label
    }
    
    static func buildAttr(with title: String) -> UILabel {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 11)
        label.translatesAutoresizingMaskIntoConstraints = false
        let data = title.data(using: .utf8)!
        let attributedString = try? NSAttributedString(
            data: data,
            options: [.documentType: NSAttributedString.DocumentType.html],
            documentAttributes: nil)
        
        label.attributedText = attributedString
        label.textAlignment = .justified
        return label
    }
}
