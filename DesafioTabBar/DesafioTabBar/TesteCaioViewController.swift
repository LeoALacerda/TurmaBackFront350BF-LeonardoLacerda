//
//  ViewController.swift
//  DesafioTabBar
//
//  Created by Leonardo Lacerda on 25/04/23.
//

import UIKit

class TesteCaioViewController: UIViewController {
    
    @IBOutlet weak var testeView: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    
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
        
        addButton.isEnabled = false
    }
    
    @IBAction func tappedEditButton(_ sender: UIButton) {
        configureImagePicker()
    }
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        if profileImageView.image == UIImage(systemName: "person.circle.fill"){
            viewModel.setProfile(profile: Profile(name: nameTextField.text ?? "", imageName: UIImage(systemName: "person.circle.fill")?.withTintColor(UIColor.black) ?? UIImage()))
            tableView.reloadData()
        }else{
            viewModel.setProfile(profile: Profile(name: nameTextField.text ?? "", imageName: profileImageView.image ?? UIImage()))
            tableView.reloadData()
            profileImageView.image = UIImage(systemName: "person.circle.fill")?.withTintColor(UIColor.black)
        }
        nameTextField.text = ""
        addButton.isEnabled = false
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

extension TesteCaioViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func configureImagePicker(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[.editedImage] as? UIImage{
            profileImageView.image = editedImage
        }else if let originalImage = info[.originalImage] as? UIImage {
            profileImageView.image = originalImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
}

extension TesteCaioViewController: UITextFieldDelegate{
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.hasText{
            addButton.isEnabled = true
        }else{
            addButton.isEnabled = false
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}

