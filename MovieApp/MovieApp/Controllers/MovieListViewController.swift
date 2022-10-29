//
//  MovieListViewController.swift
//  MovieApp
//
//  Created by AHMET HAKAN YILDIRIM on 29.10.2022.
//

import UIKit

class MovieListViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    

    // MARK: - UI ELEMENTS
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - PROPERTİES
    
    var chosenCategoryName: String = ""
    var data = DataSet()
    var chosenMovie: Movie!
    
    
    
    // MARK: - LİFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
    }
    
    // MARK: - FUNCTİONS
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.getMovies(category: chosenCategoryName).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let movieCell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as? MovieCell {
            movieCell.cellEdit(movie: data.getMovies(category: chosenCategoryName)[indexPath.row])
            return movieCell
        }
        return UICollectionViewCell()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.bounds.width
        let cellSize = (width / 2) - 15
        return CGSize(width: cellSize, height: cellSize)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        chosenMovie = data.getMovies(category: chosenCategoryName)[indexPath.row]
        
        performSegue(withIdentifier: "toMovieDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let movieDetailVC = segue.destination as? MovieDetailViewController {
            
            movieDetailVC.chosenMovie = chosenMovie
        }
    }
    
    // MARK: - ACTİONS
    
    

}
