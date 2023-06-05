//
//  ViewController.swift
//  ChatGPT350BF
//
//  Created by Leonardo Lacerda on 11/05/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var screen: HomeScreen?
    var viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }
    override func viewWillAppear(_ animated: Bool) {
        addLogoToNavigationBarItem(image: UIImage(named: "BF_Logo") ?? UIImage())
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate(delegate: self)
        screen?.delegate = self
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
    }


}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = viewModel.loadCurrentMessage(indexPath: indexPath)
        
        switch model.typeMessage{
        case .user:
            let cell = tableView.dequeueReusableCell(withIdentifier: OutgoingTextTableViewCell.identifier, for: indexPath) as? OutgoingTextTableViewCell
            cell?.setupCell(message: model.message)
            return cell ?? UITableViewCell()
        case .chatGPT:
            let cell = tableView.dequeueReusableCell(withIdentifier: IncomingTextTableViewCell.identifier, for: indexPath) as? IncomingTextTableViewCell
            cell?.setupCell(message: model.message)
            return cell ?? UITableViewCell()
//        default:
//            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt(indexPath: indexPath)
    }
}

extension HomeViewController: HomeScreenProtocol{
    func sendMessage(text: String) {
        viewModel.fetchMessage(message: text)
        screen?.tableView.reloadData()
    }
    
}

extension HomeViewController: HomeViewModelProtocol{
    func reloadTableView() {
        self.screen?.tableView.reloadData()
    }
}
