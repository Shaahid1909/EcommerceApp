//
//  ViewController.swift
//  EcomProj
//
//  Created by Admin on 07/08/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate,UITableViewDataSource,UITableViewDelegate {
 

let cell = ["cell1","cell2","cell3","cell4","cell5","cell6","cell7","cell8","cell9","cell10"]
    @IBOutlet var tableVi: UITableView!
    
    let searchController = UISearchController(searchResultsController: nil)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableVi.delegate = self
             tableVi.dataSource = self
               // self.tableVi.rowHeight = 240
        
        navigationItem.searchController = searchController
        searchController.searchBar.delegate = self
        searchController.searchBar.placeholder = "Search your product"
         
        // Do any additional setup after loading the view.
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
    print(searchText)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height:CGFloat = CGFloat()
        if indexPath.row == 0 {
            height = 244
        }
        else if indexPath.row == 1{
            height = 482
        }else if indexPath.row == 2{
            height = 246
        }else if indexPath.row == 3{
            height = 369
        }else if indexPath.row == 4{
            height = 369
        }else if indexPath.row == 5{
        height = 248
        }else if indexPath.row == 6{
            height = 365
        }else if indexPath.row == 7{
            height = 365
        }else if indexPath.row == 8 {
            height = 300
            
        }else{
            height = 405
        }
        return height
    }
 
    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 9   }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let row = indexPath.row

           if row == 0 {
                     let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! TableCell
                       return cell
          } else if row == 1{
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell2") as! TableCell2
                   return cell1
           }else if row == 2{
           let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell3") as! TableCell3
                  return cell2
            }else if row == 3 {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell4")
            return cell3!
            
           }
           else if row == 4 {
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "cell5")
            return cell4!}
           else if row == 5{
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "cell6")
            return cell5!}
           else if row == 6{
            let cell6 = tableView.dequeueReusableCell(withIdentifier: "cell7")
            return cell6!
           }else if row == 7{
            let cell7 = tableView.dequeueReusableCell(withIdentifier: "cell8")
            return cell7!}
            else {
            let cell8 = tableView.dequeueReusableCell(withIdentifier: "cell9")
            return cell8!
//            else {
//            let cell9 = tableView.dequeueReusableCell(withIdentifier: "cell10")
//            return cell9!
    
}
}
}

//          let row = indexPath.row
//
//        if row == 0 {
//                   let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as! TableCell
//                    return cell
//
//        } else {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as! TableCell2
//                return cell
//
//        }
//    }
//
//
//
//}
//
//

