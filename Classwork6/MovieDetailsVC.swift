//
//  MovieDetailsVC.swift
//  Classwork6
//
//  Created by Awrad Awrad on 4/12/1399 AP.
//  Copyright © 1399 Hasan Alsaffar. All rights reserved.
//

import UIKit

class MovieDetailsVC: UIViewController {
    

    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRatingView: UIView!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieRatedView: UIView!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var movieReleaseDateView: UIView!
    
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorName3: UILabel!
    
    @IBOutlet weak var actorImg3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setMovieDetails()
        configureUI()
        
        // Do any additional setup after loading the view.
    }
    
    func setMovieDetails() {
        // Images
        movieName.title = selectedMovie.movieName
        movieImg.image = UIImage(named: selectedMovie.movieName)
        
        // Labels
        movieRating.text = "\(selectedMovie.rating)"
        movieRated.text = selectedMovie.pgRating
        movieReleaseDate.text = "\(selectedMovie.movieReleaseDate)"
        
        // Actors Image and Label
        actorImg1.image = UIImage(named: selectedMovie.actors[0])
        actorImg2.image = UIImage(named: selectedMovie.actors[1])
        actorImg3.image = UIImage(named: selectedMovie.actors[2])
        
        actorName1.text = selectedMovie.actors[0]
        actorName2.text = selectedMovie.actors[1]
        actorName3.text = selectedMovie.actors[2]
    }
    
    func configureUI() {
        movieRatingView.layer.cornerRadius = 12
        movieRatedView.layer.cornerRadius = 12
        movieReleaseDateView.layer.cornerRadius = 12
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
