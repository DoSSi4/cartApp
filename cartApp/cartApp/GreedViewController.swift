//
//  GreedViewController.swift
//  cartApp
//
//  Created by DoSSi4 on 07.02.2021.
//

import UIKit

class GreedViewController: UIViewController {

    @IBOutlet weak var collView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collView.delegate = self
        collView.dataSource = self
        collView.register(CollectionViewCell.nib, forCellWithReuseIdentifier: CollectionViewCell.identifier)
    
    }
}
extension GreedViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as! CollectionViewCell
        return cell
    }
}
extension GreedViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 120)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        let details = storyboard?.instantiateViewController(identifier: "DetailsViewController") as! DetailsViewController
        self.present(details, animated: true)
    }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

        




