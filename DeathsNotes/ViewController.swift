//
//  ViewController.swift
//  DeathsNotes
//
//  Created by Anastasiia ALOKHINA on 5/9/19.
//  Copyright © 2019 Anastasiia ALOKHINA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        for i in 0...100{
            data.append("some dead guy number \(i)")
        }
        
       tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    private var data: [String] = []
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")! //1.
        
        let text = data[indexPath.row] //2.
        
        cell.textLabel?.text = text //3.
        
        return cell //4.
    }
    
    
    
    

}

