//
//  ViewController.swift
//  familyIntroductionApp
//
//  Created by Dylan on 10/14/24.
//

import UIKit

struct FamilyMember {
    let name: String
    let age: Int
    let relationship: String
    let details: String
    let emojiLabel: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var dadButton: UIButton!
    @IBOutlet weak var momButton: UIButton!
    @IBOutlet weak var dylanButton: UIButton!
    @IBOutlet weak var dawsonButton: UIButton!
    @IBOutlet weak var haydenButton: UIButton!
    @IBOutlet weak var maddenButton: UIButton!
    
    let dad = FamilyMember(name: "Andy", age: 45, relationship: "Dad", details: "My Dad is an owner of Achieve Today, and multiple Air BnB's.", emojiLabel: "🏌🏻")
    let mom = FamilyMember(name: "Kelly", age: 44, relationship: "Mom", details: "My Mom rarely stays at home, she's always either at the gym, skiing, hiking, or biking!", emojiLabel: "⛷️")
    let dylan = FamilyMember(name: "Dylan", age: 21, relationship: "Me", details: "I work for my Dad at Achieve Today, and I love cars!", emojiLabel: "🏄🏻‍♂️")
    let dawson = FamilyMember(name: "Dawson", age: 16, relationship: "Brother", details: "Dawson is in highschool, but works part time at vessel kitchen. He loves the gym.", emojiLabel: "🏋🏻")
    let hayden = FamilyMember(name: "Hayden", age: 13, relationship: "Sister", details: "Hayden is in middle school, and loves dance. She is Madden's twin.", emojiLabel: "🤸🏼‍♀️")
    let madden = FamilyMember(name: "Madden", age: 13, relationship: "Brother", details: "Madden is in middle school, and loves Fortnite. He is Hayden's twin.", emojiLabel: "🎮")

    var selectedFamilyMember: FamilyMember?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func familyMemberButtonTapped(_ sender: UIButton) {
        switch sender.tag {
        case 0:
          selectedFamilyMember = dad
        case 1:
          selectedFamilyMember = mom
        case 2:
            selectedFamilyMember = dylan
        case 3:
            selectedFamilyMember = dawson
        case 4:
            selectedFamilyMember = hayden
        case 5:
            selectedFamilyMember = madden
        default:
          break
        }
        performSegue(withIdentifier: "showFamilyMemberDetail", sender: nil)
      }

      override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoViewController = segue.destination as? infoViewController else { return }
        infoViewController.selectedFamilyMember = selectedFamilyMember
      
    }
}

