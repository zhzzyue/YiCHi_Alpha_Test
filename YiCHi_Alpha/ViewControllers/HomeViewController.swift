//
//  HomeViewController.swift
//  YiCHi_Alpha
//
//  Created by zhongyue zhang on 11/12/17.
//  Copyright © 2017 YiQiFaner. All rights reserved.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func logout_TouchUpInside(_ sender: UIBarButtonItem) {
        print(Auth.auth().currentUser)
        do{
            try Auth.auth().signOut()
        } catch let logoutError{
            print(logoutError)
        }
        print(Auth.auth().currentUser)
        
       self.performSegue(withIdentifier: "logOutToSignInVC", sender: nil)
        
    }
    
}
