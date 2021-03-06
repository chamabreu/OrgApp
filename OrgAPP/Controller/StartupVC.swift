//
//  StartupVC.swift
//  OrgAPP
//
//  Created by Jan Manuel Brenner on 15.07.20.
//  Copyright © 2020 Jan Manuel Brenner. All rights reserved.
//

import UIKit
import FirebaseAuth

class LoginVC: UIViewController {
	@IBOutlet weak var emailTF: UITextField!
	@IBOutlet weak var passTF: UITextField!
	@IBOutlet weak var logInButton: UIButton!
	@IBOutlet weak var createUserButton: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

    }

	@IBAction func logInButtonPressed(_ sender: UIButton) {
		// Manual verification???
		//......
		//......
		//......
		//......



		// OR Serverbased verification?
		if let email = emailTF.text, let password = passTF.text {
			Auth.auth().signIn(withEmail: email, password: password) { (userData, error) in
				if let e = error {
					print("Error: \(e.localizedDescription)")
					// Print Statement only for Debugging.
					// Create an Alert to inform User about the Error



				} else {
					// No Error -> segue to the ProjectsVC
					self.performSegue(withIdentifier: S.Segues.showProjects, sender: nil)

				}
			}
		}

	}


	@IBAction func createUserButtonPressed(_ sender: UIButton) {
		self.performSegue(withIdentifier: S.Segues.createUser, sender: nil)
	}

}
