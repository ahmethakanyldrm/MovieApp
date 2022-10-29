//
//  MovieDetailViewController.swift
//  MovieApp
//
//  Created by AHMET HAKAN YILDIRIM on 29.10.2022.
//

import UIKit

class MovieDetailViewController: UIViewController {

    // MARK: - UI ELEMENTS
    
    @IBOutlet weak var imgMovie: UIImageView!
    
    
    @IBOutlet weak var lblMovieName: UILabel!
    
    @IBOutlet weak var lblMovieDetail: UITextView!
    
    // MARK: - PROPERTİES
    
    var chosenMovie: Movie!
    
    // MARK: - LİFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let chosenMovie = chosenMovie {
            imgMovie.image = UIImage(named: chosenMovie.viewName)
            lblMovieName.text = chosenMovie.name
            lblMovieDetail.text = chosenMovie.details
            
        }
    }
    
    // MARK: - FUNCTİONS
    
    // MARK: - ACTİONS
    
    

}
