//
//  MovieCollectionViewCell.swift
//  MovieApp
//
//  Created by AHMET HAKAN YILDIRIM on 29.10.2022.
//

import UIKit

class MovieCell: UICollectionViewCell {
    
   
    
    // MARK: - UI ELEMENTS
    @IBOutlet weak var imgMovie: UIImageView!
    
    // MARK: - PROPERTİES
    
   
    
    // MARK: - FUNCTİONS
    
    override  func awakeFromNib() {
        super.awakeFromNib()
        imgMovie.layer.cornerRadius = 10
    }
    
    func cellEdit(movie:Movie) {
        imgMovie.image = UIImage(named: movie.viewName)
    }
    
    // MARK: - ACTİONS
    
    
}
