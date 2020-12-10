//
//  TableViewCell4.swift
//  EcomProj
//
//  Created by Admin on 08/08/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class TableViewCell4: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet var colview: UICollectionView!
    var categories1=["Rosemary Oil","Mango Pickle","Pepper Mint"]
            var colimage1=["BS1.jpg","BS2.jpg","BS1.jpg"]
      var measure=["500ml","500gm","500ml"]
     var diprice=["₹999","₹250","₹399"]
    
    
      var actualprice=["₹799","₹120","₹299"]
    func numberOfSections(in collectionView: UICollectionView) -> Int {
                 return 1
             }
          func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 3
          }
          
          func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
             let cellb = collectionView.dequeueReusableCell(withReuseIdentifier: "colcell1", for: indexPath) as! CollViewCell1
            cellb.lab1.text = categories1[indexPath.row]
            cellb.colmage1.image = UIImage(named:colimage1[indexPath.row])
             cellb.measLab.text = measure[indexPath.row]
             cellb.dispriceLab.text = diprice[indexPath.row]
            cellb.actprice.text = actualprice[indexPath.row]
              return cellb
        
            
          }
          override func awakeFromNib() {
              super.awakeFromNib()
              // Initialization code
              colview.delegate = self
              colview.dataSource = self
            
            
          }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

    }
    }
