//
//  ViewController.swift
//  todo
//
//  Created by 古川 和輝 on 2015/07/24.
//  Copyright (c) 2015年 Kazuki Furukawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTableView: UITableView!
    
    let dict = ["title": "リスト１✨", "deadline": "7/31"]
    let dict2 = ["title": "リスト２🆎", "deadline": "8/1"]
    let dict3 = ["title": "リスト３", "deadline": "8/8"]
    var array: [[String: String]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        array.append(dict)
        array.append(dict2)
        array.append(dict3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count(array)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! customCell
        cell.titleLabel.text = array[indexPath.row]["title"]
        cell.deadlineLabel.text = array[indexPath.row]["deadline"]
        return cell
    }
}















