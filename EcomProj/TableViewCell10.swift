//
//  TableViewCell10.swift
//  EcomProj
//
//  Created by Admin on 10/08/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class TableViewCell10: UITableViewCell,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet var ni1: UIImageView!
    
    @IBOutlet var ni2: UIImageView!
    
    @IBOutlet var nlab1: UILabel!
    
    @IBOutlet var nlab2: UILabel!
    var colimage1=["BSN1.jpg","BSN2.jpg","BS1.jpg"]
        
       func numberOfSections(in collectionView: UICollectionView) -> Int {
                    return 2
                }
             func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
               return 2
             }
             
             func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                let cellb = collectionView.dequeueReusableCell(withReuseIdentifier: "collcell3", for: indexPath) as! CollViewCell3
               
                cellb.colimag3.image = UIImage(named:colimage1[indexPath.row])
                
                 return cellb
           
               
             }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        collview3.delegate = self
//        collview3.dataSource = self
//        
//        collview3.backgroundColor = .gray
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
