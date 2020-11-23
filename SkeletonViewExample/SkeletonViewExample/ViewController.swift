//
//  ViewController.swift
//  SkeletonViewExample
//
//  Created by Sahil Arora on 2020-11-22.
//  Copyright © 2020 Sahil Arora. All rights reserved.
//

import UIKit
import SkeletonView


class ViewController: UIViewController {

    private var array  = [String]()
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.rowHeight = 120
        tableview.estimatedRowHeight = 120
        tableview.dataSource = self
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            
            for _ in 1..<30 {
                self.array.append("Netflix")
            }
          self.tableview.stopSkeletonAnimation()
           self.tableview.hideSkeleton()
            self.tableview.reloadData()
        })
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableview.isSkeletonable = true
        tableview.showAnimatedGradientSkeleton(usingGradient: .init(baseColor: .link), animation: nil, transition: .crossDissolve(0.25))
    }

}

extension ViewController:UITableViewDelegate,SkeletonTableViewDataSource{
    
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return "cell"
    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! Cell
        if !array.isEmpty{
            cell.label_Counting.text = array[indexPath.row]
        }
        
       
        return cell
    }
    
}
