//
//  Data.swift
//  MVCArchitecture
//
//  Created by Dipika Kansara on 27/9/21.
//

import Foundation
import UIKit


class AnimalData{
    
    static func getdata() -> [DataModel]{
        var arrayData = [DataModel]()
        arrayData = [
            DataModel(img: UIImage(named:"Dog.jpeg")!, title: "Dog"),
            DataModel(img: UIImage(named:"Kangaroo.jpg")!, title: "Kangaroo"),
            DataModel(img: UIImage(named:"Koala.jpg")!, title: "Koala")
        ]
        return  arrayData
        
    }
}
