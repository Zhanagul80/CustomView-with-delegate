//
//  MoviesViewController.swift
//  CustomView
//
//  Created by Zhanagul on 14.05.2022.
//

import UIKit

class MoviesViewController: UIViewController, MovieViewDelegate {
    
    @IBOutlet weak var stackView: UIStackView!
    
    let movies: [MovieModel] = [
        MovieModel(movieImage: #imageLiteral(resourceName: "Doctor Strange"), title: "Doctor Strange"),
        MovieModel(movieImage: #imageLiteral(resourceName: "Spider-Man"), title: "Spider-Man"),
        MovieModel(movieImage: #imageLiteral(resourceName: "Venom"), title: "Venom"),
        MovieModel(movieImage: #imageLiteral(resourceName: "He's all that"), title: "He's all that"),
        MovieModel(movieImage: #imageLiteral(resourceName: "King Richard"), title: "King Richard"),
        MovieModel(movieImage: #imageLiteral(resourceName: "Suicide Squad"), title: "Suicide Squad"),
        MovieModel(movieImage: #imageLiteral(resourceName: "Little Women"), title: "Little Women")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        configureMovies()
        

        // Do any additional setup after loading the view.
    }
    
    
    
    func onButtonDidTap() {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    private func configureMovies() {
        stackView.arrangedSubviews.forEach { view in
            stackView.removeArrangedSubview(view)
            view.removeFromSuperview()
        }
        for movie in movies {
            let movieView = MovieView()
            movieView.delegate = self
            movieView.configure(with: movie)
            stackView.addArrangedSubview(movieView)
            stackView.layoutSubviews()
        }
        stackView.layoutIfNeeded()
    }
    
    


}
