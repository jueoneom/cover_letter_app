//
//  ViewController.swift
//  cover_letter_app
//
//  Created by JE on 2020/08/07.
//  Copyright © 2020 JE. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var tagCollection: UICollectionView!
    let TAGS = ["Tech", "Design", "Humor", "Travel", "Music", "Writing", "Social Media", "Life", "Education", "Edtech", "Education Reform", "Photography", "Startup", "Poetry"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tagCollection.delegate = self
        self.tagCollection.dataSource = self
        let cellNib = UINib(nibName: "TagViewCell", bundle: nil)
        self.tagCollection.register(cellNib, forCellWithReuseIdentifier: "TagViewCell")
        self.tagCollection.backgroundColor = UIColor.clear
    }

}

extension MainVC : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TAGS.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagViewCell", for: indexPath) as! TagViewCell
        self.configureCell(cell: cell, forIndexPath: indexPath as NSIndexPath)
        return cell
    }
    
    func configureCell(cell: TagViewCell, forIndexPath indexPath: NSIndexPath) {
       let tag = TAGS[indexPath.row]
        cell.tagName.text = tag
     }
}

