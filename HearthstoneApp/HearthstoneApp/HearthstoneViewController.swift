import UIKit

protocol HearthstoneViewControllerProtocol: AnyObject {
    func setupItems(cells: [HearthstoneCellProtocol])
    func showDetails(data: AshesOfOutlandData)
}

final class HearthstoneViewController: UIViewController, ViewConfiguration {
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .infinite, style: .plain)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(HearthstoneCell.self, forCellReuseIdentifier: HearthstoneCell.identifier)
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.backgroundColor = .white
        tableView.allowsSelection = true
        return tableView
    }()
    
    var interactor: HearthstoneInteractorProtocol?
    private var cells: [HearthstoneCellProtocol] = []
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setupViews()
    }
    
    required init?(coder: NSCoder) { nil }
    
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
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
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
        70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        interactor?.goToDetails(index: indexPath.row)
    }
}

extension HearthstoneViewController: HearthstoneViewControllerProtocol {
    func setupItems(cells: [HearthstoneCellProtocol]) {
        self.cells = cells
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func showDetails(data: AshesOfOutlandData) {
        let coordinator = HearthstoneCoordinator(with: self)
        coordinator.goToDetails(data: HearthstoneDetailsItemFactory.build(data: data))
    }
}
