//
//  TableViewCell5.swift
//  EcomProj
//
//  Created by Admin on 08/08/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class TableViewCell5: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet var colview2: UICollectionView!
var categories2=["Fresh Turmeric","Kiwi - Green","Pepper Mint"]
        var colimage2=["BSN1.jpg","BSN2.jpg","BSN1.jpg"]
            
    var measurement=["250gm","10 pc","250gm"]
    var diprice1=["₹999","₹150","₹399"]
    
      var actualprice1=["₹799","₹110","₹299"]
    
    
    
    
func numberOfSections(in collectionView: UICollectionView) -> Int {
             return 1
         }
      func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
      }
      
      func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cellb = collectionView.dequeueReusableCell(withReuseIdentifier: "colcell2", for: indexPath) as! CollViewCell2
        cellb.lab2.text = categories2[indexPath.row]
        cellb.colmage2.image = UIImage(named:colimage2[indexPath.row])
        cellb.measureLab.text = measurement[indexPath.row]
        cellb.dispriceLab1.text = diprice1[indexPath.row]
        cellb.actprice1.text = actualprice1[indexPath.row]
          return cellb
      }
      override func awakeFromNib() {
          super.awakeFromNib()
          // Initialization code
          colview2.delegate = self
          colview2.dataSource = self
      }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
