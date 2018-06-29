//
//  ChatsViewController.swift
//  YiCHi_Alpha
//
//  Created by zhongyue zhang on 11/12/17.
//  Copyright © 2017 YiQiFaner. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    let elements = ["01","02","03"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return elements.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatHomeCell") as! ChatHomeTableViewCell
            cell.friendsNames.text = elements[indexPath.row]
        cell.friendsProfilePhoto.image = UIImage(name:elements[indexPath.row])
        return cell
    }
}
