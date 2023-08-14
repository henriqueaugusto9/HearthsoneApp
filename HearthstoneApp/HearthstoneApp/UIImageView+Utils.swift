import UIKit.UIImageView

extension UIImageView {
    func setImageFrom(stringUrl: String) {
      if let url = URL(string: stringUrl) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
          guard let imageData = data else { return }

          DispatchQueue.main.async {
            self.image = UIImage(data: imageData)
          }
        }.resume()
      }
    }
}
