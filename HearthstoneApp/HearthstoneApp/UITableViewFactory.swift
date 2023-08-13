import UIKit.UITableView

enum TableViewFactory {
    static func build(with controller: UIViewController) -> UITableView {
        let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let navigationBarHeight: CGFloat = controller.navigationController?.navigationBar.frame.size.height ?? 0
        let displayWidth: CGFloat = controller.view.frame.width
        let displayHeight: CGFloat = controller.view.frame.height
        let tableViewHeight = barHeight + navigationBarHeight
        
        let tableView = UITableView(frame: CGRect(x: 0, y: tableViewHeight,
                                                  width: displayWidth,
                                                  height: displayHeight), style: .plain)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false

        return tableView
    }
}
