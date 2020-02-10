//  ViewController.swift
//  CollectionViewPractice
//  Created by Ranjeet Raushan on 10/02/20.
//  Copyright © 2020 vaayoo. All rights reserved.

import UIKit

class CollectionViewBasicsPractice: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var collectionView: UICollectionView!
    var num = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18", "19", "20","21","22","23","24","25","26","27", "28", "29", "30" ]
    override func viewDidLoad() {
       
        super.viewDidLoad()
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewPracticeCell
        cell.nameLbl.text = num[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return num.count
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
}



