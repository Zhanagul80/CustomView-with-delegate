//
//  MovieView.swift
//  CustomView
//
//  Created by Zhanagul on 14.05.2022.
//

import UIKit

protocol MovieViewDelegate: AnyObject {
    func onButtonDidTap()
}

class MovieView: NibView {

    weak var delegate: MovieViewDelegate?
   
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    
    override func configure() {
        contentView.backgroundColor = .tertiarySystemBackground
    
    }
    
    func configure(with model: MovieModel) {
        movieImage.image = model.movieImage
        movieTitle.text = model.title
        
    }
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        delegate?.onButtonDidTap()
    }
}
