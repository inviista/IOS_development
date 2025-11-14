//
//  ViewController.swift
//  TableViewApp
//
//  Created by Aldiyar Sadykov on 14.11.2025.
//

import UIKit



enum Category : String, CaseIterable {
    case movie = "Movie"
    case audio = "Audio"
    case book = "Book"
    case course = "Course"
}
struct TableItem {
    let title: String
    let subtitle: String
    let review: String
    let image: UIImage
    let category : Category
}

class ViewController: UIViewController, UITableViewDelegate {
    let movies: [TableItem] = [
        TableItem(
            title: "The Prestige",
            subtitle: "by Christopher Nolan",
            review: "Two rival illusionists push the limits of obsession and sacrifice, turning their craft into a dangerous battle of wits and deception.",
            image: #imageLiteral(resourceName: "movie1"),
            category: .movie
        ),
        TableItem(
            title: "Green Book",
            subtitle: "by Peter Farrelly",
            review: "A warm, insightful story about friendship and dignity, following a world-class pianist and his driver during a concert tour across the American South.",
            image: #imageLiteral(resourceName: "movie2"),
            category: .movie
        ),
        TableItem(
            title: "Shutter Island",
            subtitle: "by Martin Scorsese",
            review: "A U.S. Marshal investigates the disappearance of a patient from a remote psychiatric facility, slowly uncovering a truth more unsettling than he imagined.",
            image: #imageLiteral(resourceName: "movie3"),
            category: .movie
        ),
        TableItem(
            title: "Ford v Ferrari",
            subtitle: "by James Mangold",
            review: "A thrilling biographical drama about visionary engineers who risk everything to build a race car capable of defeating Ferrari at Le Mans.",
            image: #imageLiteral(resourceName: "movie4"),
            category: .movie
        ),
        TableItem(
            title: "The Imitation Game",
            subtitle: "by Morten Tyldum",
            review: "The story of Alan Turing, a brilliant mathematician whose work on breaking Nazi codes helped win the war but cost him dearly.",
            image: #imageLiteral(resourceName: "movie5"),
            category: .movie
        )
    ]

    
    let audios: [TableItem] = [
        TableItem(
            title: "Blinding Lights",
            subtitle: "by The Weeknd",
            review: "A retro-styled synthwave hit that blends emotional tension with addictive rhythm, creating an unforgettable atmosphere.",
            image: #imageLiteral(resourceName: "track1"),
            category: .audio
        ),
        TableItem(
            title: "Сияй",
            subtitle: "by Скриптонит",
            review: "An atmospheric track with a deep sound, where lyrics about inner searching are combined with the artist's distinctive style.",
            image: #imageLiteral(resourceName: "track2"),
            category: .audio
        ),
        TableItem(
            title: "Lose Yourself",
            subtitle: "by Eminem",
            review: "A powerful, motivating anthem about a moment that cannot be missed — one of the strongest hip-hop tracks in history.",
            image: #imageLiteral(resourceName: "track3"),
            category: .audio
        ),
        TableItem(
            title: "I Wanna Be Yours",
            subtitle: "by Arctic Monkeys",
            review: "A gentle and hypnotic composition about devotion, inspired by John Cooper Clarke's poem.",
            image: #imageLiteral(resourceName: "track4"),
            category: .audio
        ),
        TableItem(
            title: "Praise The Lord",
            subtitle: "by A$AP Rocky & Skepta",
            review: "An energetic track with a playful flow, signature beat and vibrant verses — a true celebration of hip-hop.",
            image: #imageLiteral(resourceName: "track5"),
            category: .audio
        )
    ]


    let books: [TableItem] = [
        TableItem(
            title: "A Dog's Heart",
            subtitle: "by Mikhail Bulgakov",
            review: "A satirical tale about a social experiment that spirals out of control, exposing human and social vices.",
            image: #imageLiteral(resourceName: "book1"),
            category: .book
        ),
        TableItem(
            title: "The Old Man and the Sea",
            subtitle: "by Ernest Hemingway",
            review: "A timeless story of resilience, where an aging fisherman battles not just nature but his own limits.",
            image: #imageLiteral(resourceName: "book2"),
            category: .book
        ),
        TableItem(
            title: "1984",
            subtitle: "by George Orwell",
            review: "A dystopian novel depicting the terrifying power of total control, where truth is rewritten and individuality erased.",
            image: #imageLiteral(resourceName: "book3"),
            category: .book
        ),
        TableItem(
            title: "The Great Gatsby",
            subtitle: "by F. Scott Fitzgerald",
            review: "A poetic and tragic story about the American dream, love, illusion, and the price of obsession.",
            image: #imageLiteral(resourceName: "book4"),
            category: .book
        ),
        TableItem(
            title: "Scaffold",
            subtitle: "by Chingiz Aitmatov",
            review: "A philosophical novel about the fate of man and society, about faith, responsibility and moral boundaries.",
            image: #imageLiteral(resourceName: "book5"),
            category: .book
        )
    ]

    
    let courses: [TableItem] = [
        TableItem(
            title: "Mobile App Development with Swift",
            subtitle: "Lecturer: Arman Myrzakanurov",
            review: "A practical introduction to building modern iOS apps using Swift, UIKit, and Xcode tools.",
            image: #imageLiteral(resourceName: "course1"),
            category: .course
        ),
        TableItem(
            title: "Distributed Systems & Cloud Computing",
            subtitle: "Lecturer: Dr. A. Mukatay",
            review: "Foundations of scalable architectures, cloud platforms, microservices, and fault-tolerant system design.",
            image: #imageLiteral(resourceName: "course2"),
            category: .course
        ),
        TableItem(
            title: "Advanced Algorithms and Data Structures",
            subtitle: "Lecturer: Dr. I. Suleimenov",
            review: "Deep exploration of algorithmic techniques, optimizations, and complexity analysis for solving real problems.",
            image: #imageLiteral(resourceName: "course3"),
            category: .course
        ),
        TableItem(
            title: "Software Engineering Principles",
            subtitle: "Lecturer: Zhanshuakov A.K.",
            review: "A complete overview of software development methodologies, architecture design, testing, and team workflow.",
            image: #imageLiteral(resourceName: "course4"),
            category: .course
        ),
        TableItem(
            title: "Blockchain Fundamentals",
            subtitle: "Lecturer: Aasso Ziro",
            review: "Core concepts of blockchain networks, consensus algorithms, smart contracts, and practical implementation.",
            image: #imageLiteral(resourceName: "course5"),
            category: .course
        )
    ]


    @IBOutlet private weak var table : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }


}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let currentSection = Category.allCases[section]
        switch currentSection {
            case .movie: return movies.count
            case .audio: return audios.count
            case .book: return books.count
            case .course: return courses.count
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Category.allCases.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let category = Category.allCases[section]
        return category.rawValue
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentSection = Category.allCases[indexPath.section]
        
        switch(currentSection){
        case .movie:
            let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell") as! MovieTableViewCell
            let currentMovie = movies[indexPath.row]
            cell.configure(movie: currentMovie)
            return cell
        case .audio:
            let cell = tableView.dequeueReusableCell(withIdentifier: "audioCell") as! AudioTableViewCell
            let currentAudio = audios[indexPath.row]
            cell.configure(audio: currentAudio)
            return cell
        case .book:
            let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell") as! BookTableViewCell
            let currentBook = books[indexPath.row]
            cell.configure(book: currentBook)
            return cell
        case .course:
            let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell") as! CourseTableViewCell
            let currentCourse = courses[indexPath.row]
            cell.configure(course: currentCourse)
            return cell
        }
    }

}
