//
//  ViewController.swift
//  Color Take Two
//
//  Created by Carla Hennes on 5/7/16.
//  Copyright © 2016 Carla Hennes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    @IBOutlet weak var tableView: UITableView!
    
    let colors : [UIColor] = [UIColor.redColor(), UIColor.blueColor(), UIColor.greenColor(), UIColor.purpleColor(), UIColor(red: 255/255, green: 0/255, blue: 128/255, alpha: 1.0), UIColor.blackColor()]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = self.colors[indexPath.row]
        return cell
    }

}

