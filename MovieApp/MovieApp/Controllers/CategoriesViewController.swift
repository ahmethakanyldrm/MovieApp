//
//  CategoriesViewController.swift
//  MovieApp
//
//  Created by AHMET HAKAN YILDIRIM on 29.10.2022.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - UI ELEMENTS
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    // MARK: - PROPERTİES
    
    var data = DataSet()
    var chosenCategoryName = ""
    
    // MARK: - LİFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - FUNCTİONS
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as? CategoryCell {
            cell.cellEdit(movieCategory: data.categories[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        chosenCategoryName = data.categories[indexPath.row].categoryName
        performSegue(withIdentifier: "toMovieList", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let movieListVC = segue.destination as? MovieListViewController {
            movieListVC.chosenCategoryName = chosenCategoryName
        }
    }
    
    // MARK: - ACTİONS
    
    


}

