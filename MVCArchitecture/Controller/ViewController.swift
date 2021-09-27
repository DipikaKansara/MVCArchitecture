//
//  ViewController.swift
//  MVCArchitecture
//
//  Created by Dipika Kansara on 27/9/21.
//

import UIKit

class ViewController: UIViewController {
    

    var arraydata = [DataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        arraydata = AnimalData.getdata()
       
    }


}

// MARK: - Collectionview Delegate and Data source
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arraydata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FirstCollectionViewCell.idetifier    , for: indexPath) as! FirstCollectionViewCell
        
        cell.data = arraydata[indexPath.row]
        
        return cell
    }
    
    
}

