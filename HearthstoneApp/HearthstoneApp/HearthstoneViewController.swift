import UIKit

protocol HearthstoneViewControllerProtocol: AnyObject {
    func setupItems(cells: [HearthstoneCellProtocol])
}

final class HearthstoneViewController: UIViewController, ViewConfiguration {
    
    private lazy var tableView: UITableView = {
        let tableView = TableViewFactory.build(with: self)
        tableView.register(HearthstoneCell.self, forCellReuseIdentifier: HearthstoneCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .white
        tableView.allowsSelection = true
        return tableView
    }()
    
    var interactor: HearthstoneInteractorProtocol?
    private var cells: [HearthstoneCellProtocol] = []

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        interactor?.getItems()
    }
    
    //MARK: - ViewConfiguration
    func configViews() {
        view.backgroundColor = .white
    }
    
    func buildViews() {
        view.addSubview(tableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension HearthstoneViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HearthstoneCell.identifier) as? HearthstoneCell else {
            return UITableViewCell()
        }
        
        cell.config(config: cells[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = self.cells[indexPath.item]
        
        let coordinator = HearthstoneCoordinator(with: self)
        coordinator.goToDetails()
    }
}


extension HearthstoneViewController: HearthstoneViewControllerProtocol {
    func setupItems(cells: [HearthstoneCellProtocol]) {
        self.cells = cells
        setupViews()
    }
}
