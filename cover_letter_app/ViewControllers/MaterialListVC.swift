//
//  MaterialListVC.swift
//  cover_letter_app
//
//  Created by JE on 2020/08/09.
//  Copyright © 2020 JE. All rights reserved.
//

import UIKit

struct MaterialData {
    let title : String;
    let selectedField : Bool;
    let fieldName : Int;
    let totalNum : Int;
    let curNum : Int
}


class MaterialListVC: UIViewController, UITableViewDelegate{

    @IBOutlet weak var listTable: UITableView!
    var materialList = [MaterialData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        materialList.append(MaterialData(title: "title", selectedField: false, fieldName: 0, totalNum: 1, curNum: 2))
        listTable.dataSource = self
        listTable.delegate = self
    }
    

}


extension MaterialListVC : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materialList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MaterialListCell", for: indexPath) as! MaterialTableCell
        cell.titleLabel.text = materialList[0].title
        
        return cell
    }
    
}
