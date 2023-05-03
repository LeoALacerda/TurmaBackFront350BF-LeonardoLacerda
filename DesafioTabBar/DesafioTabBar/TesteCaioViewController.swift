//
//  ViewController.swift
//  DesafioTabBar
//
//  Created by Leonardo Lacerda on 25/04/23.
//

import UIKit

class TesteCaioViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    var viewModel: ViewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        nameTextField.delegate = self
        profileImageView.layer.cornerRadius = 80
    }
    
    private func configureTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        }
    
    func configImagePickerController(){
        imagePicker.delegate = self
    }
    
    @IBAction func tappedEditButton(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
        configImagePickerController()
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if let name = nameTextField.text, !name.isEmpty{
            viewModel.setProfile(profile: Profile(name: nameTextField.text ?? "", imageName: profileImageView.image ?? UIImage()))
            tableView.reloadData()
            profileImageView.image = UIImage(systemName: "person.circle.fill")
            nameTextField.text = ""
            tableView.scrollToRow(at: IndexPath(row: (viewModel.arrayCount() - 1), section: 0), at: .bottom, animated: true)
        }else{
            let alertController = UIAlertController(title: "Ops!", message: "Informe o nome corretamente", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .default) { action in
                print("OKkkk")
            }
            alertController.addAction(okButton)
            present(alertController, animated: true)
        }
    }
}

extension TesteCaioViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.arrayCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(profile: viewModel.getProfile(index: indexPath.row))
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        114
    }
}

extension TesteCaioViewController: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

extension TesteCaioViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            profileImageView.image = image
        }
        picker.dismiss(animated: true)
    }
}
