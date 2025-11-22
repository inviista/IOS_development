//
//  ViewController.swift
//  NavigationApp
//
//  Created by Aldiyar Sadykov on 21.11.2025.
//

import UIKit

let audios: [TableItem] = [
    
    TableItem(
            title: "Blinding Lights",
            subtitle: "by The Weeknd",
            review: "Still one of the most addictive tracks for me — the retro vibe just never gets old. It's the kind of song that instantly boosts your mood.",
            image: #imageLiteral(resourceName: "track1"),
            category: .audio
        ),
        TableItem(
            title: "Сияй",
            subtitle: "by Скриптонит",
            review: "A song I always come back to. The mood, the atmosphere, the flow — everything feels raw and honest. One of his best.",
            image: #imageLiteral(resourceName: "track2"),
            category: .audio
        ),
        TableItem(
            title: "Lose Yourself",
            subtitle: "by Eminem",
            review: "A timeless classic. No matter how many times I hear it, the energy still hits just as hard. Perfect when you need motivation.",
            image: #imageLiteral(resourceName: "track3"),
            category: .audio
        ),
        TableItem(
            title: "I Wanna Be Yours",
            subtitle: "by Arctic Monkeys",
            review: "A calm and beautifully simple track. It has this soft, intimate vibe that makes it really easy to get lost in.",
            image: #imageLiteral(resourceName: "track4"),
            category: .audio
        ),
        TableItem(
            title: "Praise The Lord",
            subtitle: "by A$AP Rocky & Skepta",
            review: "Always a banger. The beat, the flow, the vibe — everything comes together perfectly. One of my favorite hype tracks.",
            image: #imageLiteral(resourceName: "track5"),
            category: .audio
        ),

        TableItem(
            title: "PIXELATED KISSES",
            subtitle: "by Joji",
            review: "A really soft and emotional track. Joji’s style fits it perfectly — melancholic, dreamy, and surprisingly relatable.",
            image: #imageLiteral(resourceName: "track6"),
            category: .audio
        ),
            
        TableItem(
            title: "Hoodrich Tales",
            subtitle: "by Big Baby Tape",
            review: "An album that brings pure nostalgia. It’s fun, energetic, and honestly still hits even after all these years.",
            image: #imageLiteral(resourceName: "track7"),
            category: .audio
        ),
            
        TableItem(
            title: "FLUDDALITY",
            subtitle: "by GONE.Fludd",
            review: "A light, easygoing album. Nothing too serious — just good vibes when you want something fun in the background.",
            image: #imageLiteral(resourceName: "track8"),
            category: .audio
        ),
            
        TableItem(
            title: "PRIDE.",
            subtitle: "by Kendrick Lamar",
            review: "A deep and thoughtful track. I really like how calm it feels while still making you reflect on yourself.",
            image: #imageLiteral(resourceName: "track9"),
            category: .audio
        ),
            
        TableItem(
            title: "Trust",
            subtitle: "by Brent Faiyaz",
            review: "A smooth, late-night type of song. Very atmospheric, with that signature Brent mood — soft, emotional, and a little heavy.",
            image: #imageLiteral(resourceName: "track10"),
            category: .audio
        )
    ]



class AudioViewController: ViewController {

    override var items: [TableItem] {
            return audios
    }
    
    override func getCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "audioCell") as! AudioTableViewCell
        let currentAudio = audios[indexPath.row]
        cell.configure(audio: currentAudio)
        return cell
    }
    
    override func getSelectedItem(indexPath: IndexPath) -> TableItem? {
        return audios[indexPath.row]
    }
    
}

