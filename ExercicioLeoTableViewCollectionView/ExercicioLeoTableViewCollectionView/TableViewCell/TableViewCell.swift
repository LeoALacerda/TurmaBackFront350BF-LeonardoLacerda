//
//  TableViewCell.swift
//  ExercicioLeoTableViewCollectionView
//
//  Created by Leonardo Lacerda on 21/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var list: [Application] = []
    
    static let identifier: String = String(describing: TableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCollectionView()
    }
    
    private func configureCollectionView(){
        collectionView.dataSource = self
        collectionView.delegate = self
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout{
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }
        collectionView.register(CollectionViewCell.nib(), forCellWithReuseIdentifier: CollectionViewCell.identifier)
    }
    
    func setupCell(apps: Category){
        categoryLabel.text = apps.categoryName
        list = apps.categoryList
    }
    
}

extension TableViewCell: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell
        cell?.setupCollectionViewCell(application: list[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
}

extension TableViewCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: 120, height: 120)
    }
}
