//
//  ViewController.swift
//  RandomizeApp
//
//  Created by Алдияр on 23.10.2025.
//

import UIKit

class ViewController: UIViewController {
    struct Item {
            let title: String
            let imageName: String
            let description: String
            let attributes: [String]
    }
    let items: [Item] = [
            Item(title: "Cratos", imageName: "godofwar",
                 description: "God of War hero from Greek mythology, known for his strength and rage.",
                 attributes: ["Origin: Greece", "Year: 2018", "Rating: 9.5"]),
            Item(title: "John-117", imageName: "halo",
                 description: "Master Chief, super-soldier from the Halo series.",
                 attributes: ["Origin: Earth", "Year: 2001", "Rating: 9.8"]),
            Item(title: "Altair", imageName: "assassincreed",
                 description: "Assassin from the Holy Land in the Assassin's Creed series.",
                 attributes: ["Origin: Syria", "Year: 2007", "Rating: 9.0"]),
            Item(title: "Ghost", imageName: "callofduty",
                 description: "Elite soldier with a skull mask from Call of Duty.",
                 attributes: ["Origin: USA", "Year: 2013", "Rating: 8.5"]),
            Item(title: "Vaas", imageName: "farcry",
                 description: "Infamous antagonist from Far Cry 3, known for chaos and charisma.",
                 attributes: ["Origin: Rook Islands", "Year: 2012", "Rating: 9.2"]),
            Item(title: "Jin Sakai", imageName: "ghostoftsushima",
                 description: "Samurai from Tsushima Island fighting against Mongol invaders.",
                 attributes: ["Origin: Japan", "Year: 2020", "Rating: 9.6"]),
            Item(title: "James Heller", imageName: "prototype",
                 description: "Protagonist with shape-shifting powers in Prototype series.",
                 attributes: ["Origin: New York", "Year: 2009", "Rating: 8.7"]),
            Item(title: "Peter Parker", imageName: "spiderman",
                 description: "Spider-Man, hero of New York with spider powers.",
                 attributes: ["Origin: New York", "Year: 2002", "Rating: 9.4"]),
            Item(title: "Joel", imageName: "thelastofus",
                 description: "Survivor in a post-apocalyptic world, mentor to Ellie.",
                 attributes: ["Origin: USA", "Year: 2013", "Rating: 9.9"]),
            Item(title: "Nate", imageName: "unchurted",
                 description: "Nathan Drake, treasure hunter and adventurer.",
                 attributes: ["Origin: USA", "Year: 2007", "Rating: 9.3"])
        ]
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var randomizeButton: UIButton!
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    @IBOutlet weak var attributesStackView: UIStackView!
    
    @IBAction func randomizeButtonPressed(_ sender: UIButton) {
        showRandomItem()

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        showRandomItem()
        view.bringSubviewToFront(itemTitleLabel)
        view.bringSubviewToFront(itemDescriptionLabel)
        view.bringSubviewToFront(randomizeButton)
        view.bringSubviewToFront(attributesStackView)
        
        Styles()
        
    }

    func Styles() {
            itemTitleLabel.font = UIFont.boldSystemFont(ofSize: 28)
            itemTitleLabel.textColor = .white
            itemTitleLabel.textAlignment = .center
            itemTitleLabel.backgroundColor = UIColor.black.withAlphaComponent(0.4)
            itemTitleLabel.layer.cornerRadius = 12
            itemTitleLabel.clipsToBounds = true

            itemDescriptionLabel.font = UIFont.systemFont(ofSize: 16)
            itemDescriptionLabel.textColor = .white
            itemDescriptionLabel.numberOfLines = 0
            itemDescriptionLabel.backgroundColor = UIColor.black.withAlphaComponent(0.3)
            itemDescriptionLabel.layer.cornerRadius = 10
            itemDescriptionLabel.clipsToBounds = true
            itemDescriptionLabel.textAlignment = .center

        randomizeButton.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.7)
            randomizeButton.setTitleColor(.white, for: .normal)
            randomizeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            randomizeButton.layer.cornerRadius = 15

            attributesStackView.axis = .vertical
            attributesStackView.alignment = .fill
            attributesStackView.spacing = 5

        }

        func showRandomItem() {
            guard let randomItem = items.randomElement() else { return }

            itemImageView.image = UIImage(named: randomItem.imageName)
            itemTitleLabel.text = randomItem.title
            itemDescriptionLabel.text = randomItem.description

            attributesStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }

            for attr in randomItem.attributes {
                let label = UILabel()
                label.text = attr
                label.font = UIFont.systemFont(ofSize: 14)
                label.textColor = .white
                label.backgroundColor = UIColor.black.withAlphaComponent(0.3)
                label.textAlignment = .center
                label.layer.cornerRadius = 5
                label.clipsToBounds = true
                label.heightAnchor.constraint(equalToConstant: 20).isActive = true
                attributesStackView.addArrangedSubview(label)
            }
            
        }
    }

