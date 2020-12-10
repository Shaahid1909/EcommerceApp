//
//  TableCell.swift
//  EcomProj
//
//  Created by Admin on 07/08/20.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    
    @IBOutlet var pageCon: UIPageControl!
    
    var images: [String] = ["i1.jpg","i2.jpg","i3.jpg"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        pageCon.numberOfPages = images.count
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            self.scrollView.addSubview(imgView)
            
            
            
        }
        scrollView.contentSize = CGSize(width:(scrollView.frame.size.width * CGFloat(images.count)), height:scrollView.frame.size.height)
        scrollView.delegate = self
        

    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = scrollView.contentOffset.x / scrollView.frame.size.width
        pageCon.currentPage = Int(pageNumber)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }


    
    
}
