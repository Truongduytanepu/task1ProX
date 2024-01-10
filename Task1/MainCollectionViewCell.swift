//
//  MainCollectionViewCell.swift
//  Task1
//
//  Created by Trương Duy Tân on 10/01/2024.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var viewColor: UIView!
    @IBOutlet weak var nestleCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        nestleCollectionView.collectionViewLayout = flowLayout
        nestleCollectionView.register(UINib(nibName: "NestleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NestleCollectionViewCell")
        
        nestleCollectionView.delegate = self
        nestleCollectionView.dataSource = self
    }

}

extension MainCollectionViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NestleCollectionViewCell", for: indexPath) as! NestleCollectionViewCell
        cell.backgroundColor = UIColor.red
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
}
