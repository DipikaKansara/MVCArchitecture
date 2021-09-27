//
//  FirstCollectionViewCell.swift
//  MVCArchitecture
//
//  Created by Dipika Kansara on 27/9/21.
//

import UIKit

class FirstCollectionViewCell: UICollectionViewCell {
    
    
    
   
    @IBOutlet var Img: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    
    var data : DataModel?{
        didSet{
            Img.image = data?.img
            resultLabel.text = data?.title
        }
    }
    
    
    
    
}


extension UICollectionViewCell {
    static var idetifier : String{
        return String(describing: self)
    }
    
    
}
