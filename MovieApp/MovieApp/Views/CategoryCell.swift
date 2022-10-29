//
//  CategoryCell.swift
//  MovieApp
//
//  Created by AHMET HAKAN YILDIRIM on 29.10.2022.
//

import UIKit

class CategoryCell: UITableViewCell {

    // MARK: - UI ELEMENTS
    @IBOutlet weak var imgCategory: UIImageView!
    
    @IBOutlet weak var lblCategoryName: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgCategory.layer.cornerRadius = 10
    }
    
    // MARK: - FUNCTİONS
    
    func cellEdit(movieCategory: MovieCategory){
        imgCategory.image = UIImage(named: movieCategory.viewName)
        lblCategoryName.text = movieCategory.categoryName   
    }

   

}
