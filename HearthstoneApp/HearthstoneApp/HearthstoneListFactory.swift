enum HearthstoneListFactory {
    static func build() -> HearthstoneViewController {
        let view = HearthstoneViewController()
        let presenter  = HearthstonePresenter(view: view)
        let interactor = HearthstoneInteractor(presenter: presenter)
        
        view.interactor = interactor
        return view
    }
}
