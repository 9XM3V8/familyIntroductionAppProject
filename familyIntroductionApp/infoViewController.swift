//
//  infoViewController.swift
//  familyIntroductionApp
//
//  Created by Dylan on 10/14/24.
//

import UIKit

class infoViewController: UIViewController {

    var selectedFamilyMember: FamilyMember?

    @IBOutlet weak var relationshipLabel: UILabel!

    @IBOutlet weak var imageLabel: UILabel!

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var descriptionsLabel: UILabel!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        if let member = selectedFamilyMember {
        nameLabel.text = member.name
        ageLabel.text = String(member.age)
        relationshipLabel.text = member.relationship
        descriptionsLabel.text = member.details
        imageLabel.text = member.emojiLabel
        }
    }
}
