//
//  ViewController.swift
//  NavigationApp
//
//  Created by Aldiyar Sadykov on 21.11.2025.
//

import UIKit

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
        title: "Rich Dad Poor Dad",
        subtitle: "by Robert Kiyosaki",
        review: "Easy to read and surprisingly motivating. Even if you don’t agree with everything, it really shifts how you think about money.",
        image: #imageLiteral(resourceName: "book3"),
        category: .book
    ),
    TableItem(
        title: "The Alchemist",
        subtitle: "by Paulo Coelho",
                review: "A simple but inspiring story. It feels more like a long, calming conversation about following your path and trusting the journey.",
        image: #imageLiteral(resourceName: "book4"),
        category: .book
    ),
    TableItem(
        title: "Scaffold",
        subtitle: "by Chingiz Aitmatov",
        review: "A philosophical novel about the fate of man and society, about faith, responsibility and moral boundaries.",
        image: #imageLiteral(resourceName: "book5"),
        category: .book
    ),
    
    TableItem(title: "Униженные и оскорблённые",
              subtitle: "by Фёдор Достоевский",
              review: "A poem about people who have been victims of betrayal, poverty and cruelty, and how they maintain love, kindness and dignity despite pain and injustice.",
              image: #imageLiteral(resourceName: "book6"),
              category: .book),
        
    TableItem(title: "1984",
              subtitle: "by George Orwell",
              review: "A novel about a totalitarian society where the authorities completely control the thoughts and lives of people, and the hero tries to preserve freedom and truth in a world of total surveillance and lies.",
              image: #imageLiteral(resourceName: "book7"),
              category: .book),
        
    TableItem(title: "The Great Gatsby",
              subtitle: "by F. Scott Fitzgerald",
              review: "A novel about wealth, dreams, and illusions, Jay Gatsby tries to win back his lost love by creating a glittering but empty world of luxury that ultimately leads to tragedy.",
              image: #imageLiteral(resourceName: "book8"),
              category: .book),
        
    TableItem(title: "The Metamorphosis",
              subtitle: "by Franz Kafka",
              review: "The story of a man who wakes up one day transformed into an insect, and through this transformation, his alienation, loneliness, and the gradual destruction of his connection to his family and community are revealed.",
              image: #imageLiteral(resourceName: "book9"),
              category: .book),
        
    TableItem(title: "The Elephant Vanishes",
              subtitle: "by Haruki Murakami",
              review: "Murakami's story of a circus elephant who mysteriously disappears, leaving the protagonist with a feeling of strangeness and loss, as if reality had cracked.",
              image: #imageLiteral(resourceName: "book10"),
              category: .book)
    ]


class BookViewController: ViewController {

    override var items: [TableItem] {
            return books
    }
    
    override func getCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell") as! BookTableViewCell
        let currentBook = books[indexPath.row]
        cell.configure(book: currentBook)
        return cell
    }
    
    override func getSelectedItem(indexPath: IndexPath) -> TableItem? {
        return books[indexPath.row]
    }
}

