//
//  ViewController.swift
//  NavigationApp
//
//  Created by Aldiyar Sadykov on 21.11.2025.
//

import UIKit

let movies: [TableItem] = [
    TableItem(
            title: "The Prestige",
            subtitle: "by Christopher Nolan",
            review: "A film that left a strong impression on me. The tension builds constantly, and the ending completely changes the way you see everything. Very atmospheric and clever.",
            image: #imageLiteral(resourceName: "movie1"),
            category: .movie
        ),
        TableItem(
            title: "Green Book",
            subtitle: "by Peter Farrelly",
            review: "A warm and heartfelt movie that leaves a pleasant feeling afterward. I especially liked the chemistry between the main characters and how naturally their friendship develops.",
            image: #imageLiteral(resourceName: "movie2"),
            category: .movie
        ),
        TableItem(
            title: "Shutter Island",
            subtitle: "by Martin Scorsese",
            review: "A very atmospheric and dark film that keeps you on edge the whole time. The ending sticks with you for a long time. One of those thrillers you want to rewatch.",
            image: #imageLiteral(resourceName: "movie3"),
            category: .movie
        ),
        TableItem(
            title: "Ford v Ferrari",
            subtitle: "by James Mangold",
            review: "A fun and energetic movie that’s easy to enjoy. The racing scenes are great, and the lead actors have fantastic chemistry.",
            image: #imageLiteral(resourceName: "movie4"),
            category: .movie
        ),
        TableItem(
            title: "Hacksaw Ridge",
            subtitle: "by John Gilbert",
            review: "A very emotional and powerful film. The story is inspiring and even gives chills at times. Excellent acting and strong storytelling.",
            image: #imageLiteral(resourceName: "movie5"),
            category: .movie
        ),
            
        TableItem(
            title: "Inception",
            subtitle: "by Christopher Nolan",
            review: "One of those films that makes you think about it for days. Complex, visually stunning, and incredibly engaging.",
            image: #imageLiteral(resourceName: "movie6"),
            category: .movie
        ),
            
        TableItem(
            title: "Source Code",
            subtitle: "by Duncan Jones",
            review: "A fast-paced movie that keeps your attention until the end. The concept is interesting and the ending is surprisingly strong.",
            image: #imageLiteral(resourceName: "movie7"),
            category: .movie
        ),
            
        TableItem(
            title: "The Imitation Game",
            subtitle: "by Morten Tyldum",
            review: "A thoughtful, emotional, and well-acted film. I especially enjoyed how the character of Alan Turing is portrayed.",
            image: #imageLiteral(resourceName: "movie8"),
            category: .movie
        ),
            
        TableItem(
            title: "Kingsman: The Secret Service",
            subtitle: "by Matthew Vaughn",
            review: "Stylish and entertaining. The action scenes are excellent, the humor fits perfectly, and the whole tone makes it one of the best films in the genre.",
            image: #imageLiteral(resourceName: "movie9"),
            category: .movie
        ),
        
        TableItem(
            title: "Ready Player One",
            subtitle: "by Steven Spielberg",
            review: "A bright, fun, and easy-to-watch movie. The references, the pace, and the worldbuilding make it a great choice for an evening watch.",
            image: #imageLiteral(resourceName: "movie10"),
            category: .movie
        )
    ]

class MovieViewController: ViewController {

    override var items: [TableItem] {
            return movies
    }
    
    override func getCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as! MovieTableViewCell
        let currentMovie = movies[indexPath.row]
        cell.configure(movie: currentMovie)
        return cell
    }
    
    override func getSelectedItem(indexPath: IndexPath) -> TableItem? {
        return movies[indexPath.row]
    }
}

