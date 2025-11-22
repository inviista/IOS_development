//
//  ViewController.swift
//  NavigationApp
//
//  Created by Aldiyar Sadykov on 21.11.2025.
//

import UIKit


let courses: [TableItem] = [
    TableItem(
            title: "Mobile App Development with Swift",
            subtitle: "Lecturer: Arman Myrzakanurov",
            review: "A very hands-on and useful course. I really liked that we built real iOS features instead of just theory. After this class, working with Swift and UIKit feels much more natural.",
            image: #imageLiteral(resourceName: "course1"),
            category: .course
        ),
        TableItem(
            title: "Distributed Systems & Cloud Computing",
            subtitle: "Lecturer: Dr. A. Mukatay",
            review: "A tough but rewarding course. It finally helped me understand how large-scale systems actually work. The cloud labs were especially helpful for seeing theory in action.",
            image: #imageLiteral(resourceName: "course2"),
            category: .course
        ),
        TableItem(
            title: "Advanced Algorithms and Data Structures",
            subtitle: "Lecturer: Dr. I. Suleimenov",
            review: "Challenging, but very satisfying. The course really sharpened the way I approach problems. Great for anyone who wants to improve their algorithmic thinking.",
            image: #imageLiteral(resourceName: "course3"),
            category: .course
        ),
        TableItem(
            title: "Software Engineering Principles",
            subtitle: "Lecturer: Zhanshuakov A.K.",
            review: "A solid overview of how real software projects are built and organized. I especially liked the discussions on architecture and best practices — very applicable to real work.",
            image: #imageLiteral(resourceName: "course4"),
            category: .course
        ),
        TableItem(
            title: "Blockchain Fundamentals",
            subtitle: "Lecturer: Aasso Ziro",
            review: "A great introduction to blockchain. The course explained complex topics in a simple way, and after it I finally started to understand what happens behind smart contracts.",
            image: #imageLiteral(resourceName: "course5"),
            category: .course
        ),

        TableItem(
            title: "Algorithms and Data Structures",
            subtitle: "Lecturer: Aman J.",
            review: "A useful and straightforward course that builds a strong foundation. The explanations were clear, and the tasks really helped reinforce the concepts.",
            image: #imageLiteral(resourceName: "course6"),
            category: .course
        ),
            
        TableItem(
            title: "Security of Operating Systems",
            subtitle: "Lecturer: Denis Valyaev",
            review: "One of the most practical courses I’ve taken. It teaches how systems can actually be attacked — and how to defend them. Very eye-opening and extremely relevant.",
            image: #imageLiteral(resourceName: "course7"),
            category: .course
        ),
            
        TableItem(
            title: "Ethical Hacking",
            subtitle: "Lecturer: Aasso Ziro",
            review: "A very engaging course that makes cybersecurity fun to learn. I liked that we used real techniques but in a legal, controlled environment. Great hands-on experience.",
            image: #imageLiteral(resourceName: "course8"),
            category: .course
        ),
            
        TableItem(
            title: "Discrete Structures",
            subtitle: "Lecturer: Ulzhan Ostemirova",
            review: "A fundamental course that helped me better understand the math behind computer science. Not always easy, but very useful in the long run.",
            image: #imageLiteral(resourceName: "course9"),
            category: .course
        ),
            
        TableItem(
            title: "Modern Methods of Software Development",
            subtitle: "Lecturer: Aron Karataev",
            review: "A great overview of modern development practices. I especially liked the focus on real-world tools like CI/CD and Agile — things you actually use in software teams.",
            image: #imageLiteral(resourceName: "course10"),
            category: .course
        )
]




class CourseViewController: ViewController {

    override var items: [TableItem] {
            return courses
    }
    
    override func getCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseCell") as! CourseTableViewCell
        let currentCourse = courses[indexPath.row]
        cell.configure(course: currentCourse)
        return cell
    }
    
    override func getSelectedItem(indexPath: IndexPath) -> TableItem? {
        return courses[indexPath.row]
    }
}

