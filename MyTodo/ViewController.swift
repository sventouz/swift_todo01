//
//  ViewController.swift
//  MyTodo
//
//  Created by higuchiryunosuke on 2019/12/25.
//  Copyright © 2019年 higuchiryunosuke. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let todo = ["牛乳を買う", "髪を切る", "掃除をする"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //セルに表示する値を取得する
        cell.textLabel!.text = todo[indexPath.row]
        return cell
    }


}

